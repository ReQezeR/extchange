import 'package:auto_animated/auto_animated.dart';
import 'package:extchange/src/bloc/_index.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/pages/detail/detail_widget.dart';
import 'package:extchange/src/pages/table/table_widget.dart';
import 'package:extchange/src/widgets/currency_icon.dart';
import 'package:extchange/src/widgets/custom_button.dart';
import 'package:extchange/src/widgets/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:recase/recase.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key, required this.currency, required this.name}) : super(key: key);
  final String currency;
  final String name;

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() {
    context.read<LastMonthRatesSeriesBloc>().add(ReloadLastMonthRateSeries(code: widget.currency));
  }

  @override
  void initState() {
    context.read<LastMonthRatesSeriesBloc>().add(LoadLastMonthRateSeries(code: widget.currency));
    super.initState();
  }

  Widget buildAnimatedItem(BuildContext context, Animation<double> animation, {required Widget child}) {
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 5),
            end: Offset.zero,
          ).animate(animation),
          child: child),
    );
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
                    Center(
                      child: Container(
                        constraints: BoxConstraints(maxHeight: 45, minWidth: MediaQuery.of(context).size.width * 0.25),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Center(
                                  child: CurrencyIcon(currencyCode: widget.currency, size: 30, color: Colors.lime),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  ReCase(widget.name).titleCase,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
                            BlocConsumer<LastMonthRatesSeriesBloc, LastMonthRatesSeriesState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loading: () => Container(),
                                  success: (AvgExchangeRatesSeries avgSeries, BidAskExchangeRatesSeries bidAskSeries) => AnimateIfVisible(
                                    key: const Key('item.t.1'),
                                    duration: const Duration(milliseconds: 300),
                                    builder: (
                                      BuildContext context,
                                      Animation<double> animation,
                                    ) =>
                                        buildAnimatedItem(
                                      context,
                                      animation,
                                      child: CurrencyTable(
                                        avgSeries: avgSeries,
                                        bidAskSeries: bidAskSeries,
                                      ),
                                    ),
                                  ),
                                  failure: (String error) => FailureWidget(error: error),
                                  orElse: () => Container(),
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
                            )
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
