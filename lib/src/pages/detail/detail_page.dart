import 'package:auto_animated/auto_animated.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/pages/detail/detail_widget.dart';
import 'package:extchange/src/widgets/custom_button.dart';
import 'package:extchange/src/widgets/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../bloc/_index.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.currency}) : super(key: key);
  final String currency;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() {
    context.read<CurrentRatesSeriesBloc>().add(ReloadCurrentRateSeries(code: widget.currency));
  }

  @override
  void initState() {
    context.read<CurrentRatesSeriesBloc>().add(LoadCurrentRateSeries(code: widget.currency));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomButton(
                        decoration: const BoxDecoration(
                          color: Colors.lime,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        onTap: () => context.pop(),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.transparent,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.currency_exchange,
                              color: Colors.limeAccent,
                            ),
                            Text(
                              "Extchange",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: RemoveOverscrollWidget(
                  child: SmartRefresher(
                    //TODO change loading widget color
                    controller: _refreshController,
                    enablePullDown: true,
                    onRefresh: _onRefresh,
                    header: const ClassicHeader(
                      refreshingText: "  ",
                      releaseText: "  ",
                      completeText: "  ",
                      failedText: "  ",
                      idleText: "  ",
                      spacing: 0,
                      height: 60.0,
                      iconPos: IconPosition.right,
                      refreshStyle: RefreshStyle.Follow,
                    ),
                    child: AnimateIfVisibleWrapper(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            BlocConsumer<CurrentRatesSeriesBloc, CurrentRatesSeriesState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loading: () => const Center(child: LoadingWidget()),
                                  success: (AvgExchangeRatesSeries avgSeries, BidAskExchangeRatesSeries bidAskSeries) => DetailWidget(
                                    avgSeries: avgSeries,
                                    bidAskSeries: bidAskSeries,
                                  ),
                                  failure: (String error) => FailureWidget(error: error),
                                  orElse: () => const Center(child: LoadingWidget()),
                                );
                              },
                              listener: (context, state) {
                                state.maybeWhen(
                                  success: (_, __) {
                                    _refreshController.refreshCompleted();
                                  },
                                  failure: (String error) {
                                    _refreshController.refreshFailed();
                                  },
                                  orElse: () {},
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
