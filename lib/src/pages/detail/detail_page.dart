import 'package:auto_animated/auto_animated.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/pages/detail/detail_widget.dart';
import 'package:extchange/src/pages/detail/line_chart_detail_widget.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:extchange/src/widgets/custom_button.dart';
import 'package:extchange/src/widgets/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:theme_provider/theme_provider.dart';

import '../../bloc/_index.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.currency}) : super(key: key);
  final String currency;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String? name;
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() async {
    if (mounted) {
      setState(() {});
    }
    context.read<CurrentRatesSeriesBloc>().add(ReloadCurrentRateSeries(code: widget.currency));
    context.read<LastMonthRatesSeriesBloc>().add(ReloadLastMonthRateSeries(code: widget.currency));
    await Future.delayed(const Duration(seconds: 5));
    if (_refreshController.isLoading) {
      _refreshController.loadFailed();
      await Future.delayed(const Duration(seconds: 1));
      if (mounted) {
        setState(() {});
      }
    } else if (_refreshController.isRefresh) {
      _refreshController.refreshFailed();
      await Future.delayed(const Duration(seconds: 1));
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  void initState() {
    context.read<CurrentRatesSeriesBloc>().add(LoadCurrentRateSeries(code: widget.currency));
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
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    return ThemeConsumer(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
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
                          decoration: BoxDecoration(
                            color: theme.secondarySurfaceColor,
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                          ),
                          onTap: () => context.pop(),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.arrow_back,
                              color: theme.secondaryAccentIconColor,
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
                            children: [
                              Icon(
                                Icons.currency_exchange,
                                color: theme.secondaryAccentIconColor,
                              ),
                              Text(
                                "Extchange",
                                style: TextStyle(
                                  color: theme.mainTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      BlocBuilder<CurrentRatesSeriesBloc, CurrentRatesSeriesState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            success: (AvgExchangeRatesSeries avgSeries, BidAskExchangeRatesSeries bidAskSeries) => Align(
                              alignment: Alignment.centerRight,
                              child: CustomButton(
                                decoration: BoxDecoration(
                                  color: theme.secondarySurfaceColor,
                                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                                ),
                                onTap: () => context.push('/details/${widget.currency}/table', extra: name),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.list,
                                    color: theme.secondaryAccentIconColor,
                                  ),
                                ),
                              ),
                            ),
                            orElse: () => Container(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: RemoveOverscrollWidget(
                    child: SmartRefresher(
                      controller: _refreshController,
                      enableTwoLevel: false,
                      onRefresh: _onRefresh,
                      header: ClassicHeader(
                        refreshingText: "  ",
                        releaseText: "  ",
                        completeText: "  ",
                        failedText: "  ",
                        idleText: "  ",
                        spacing: 0,
                        height: 60.0,
                        iconPos: IconPosition.right,
                        refreshStyle: RefreshStyle.Follow,
                        refreshingIcon: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: theme.secondaryAccentIconColor,
                          ),
                        ),
                      ),
                      child: AnimateIfVisibleWrapper(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              BlocBuilder<CurrentRatesSeriesBloc, CurrentRatesSeriesState>(builder: (context, state) {
                                return state.maybeWhen(
                                  failure: (error) => AnimatedContainer(
                                    duration: const Duration(milliseconds: 400),
                                    height: _refreshController.isRefresh ? 0 : 40,
                                    child: AnimatedOpacity(
                                      duration: const Duration(milliseconds: 300),
                                      opacity: _refreshController.isRefresh ? 0 : 1,
                                      child: const PullToRefreshWidget(),
                                    ),
                                  ),
                                  orElse: () => BlocBuilder<LastMonthRatesSeriesBloc, LastMonthRatesSeriesState>(builder: (context, state) {
                                    return state.maybeWhen(
                                      failure: (error) => AnimatedContainer(
                                        duration: const Duration(milliseconds: 400),
                                        height: _refreshController.isRefresh ? 0 : 40,
                                        child: AnimatedOpacity(
                                          duration: const Duration(milliseconds: 300),
                                          opacity: _refreshController.isRefresh ? 0 : 1,
                                          child: const PullToRefreshWidget(),
                                        ),
                                      ),
                                      orElse: () => Container(),
                                    );
                                  }),
                                );
                              }),
                              AnimateIfVisible(
                                key: const Key('item.0'),
                                duration: const Duration(milliseconds: 300),
                                builder: (
                                  BuildContext context,
                                  Animation<double> animation,
                                ) =>
                                    buildAnimatedItem(
                                  context,
                                  animation,
                                  child: BlocConsumer<CurrentRatesSeriesBloc, CurrentRatesSeriesState>(
                                    builder: (context, state) {
                                      return state.maybeWhen(
                                        loading: () => const Center(child: LoadingWidget()),
                                        success: (AvgExchangeRatesSeries avgSeries, BidAskExchangeRatesSeries bidAskSeries) => Column(
                                          children: [
                                            DetailWidget(
                                              avgSeries: avgSeries,
                                              bidAskSeries: bidAskSeries,
                                            ),
                                            AvgRateWidget(avgSeries: avgSeries),
                                          ],
                                        ),
                                        failure: (String error) =>
                                            FailureWidget(error: "Nie udało się wczytać informacji o walucie ${widget.currency.toUpperCase()}"),
                                        orElse: () => const Center(child: LoadingWidget()),
                                      );
                                    },
                                    listener: (context, state) {
                                      state.maybeWhen(
                                        success: (_, __) {
                                          name = _.currency;
                                          _refreshController.refreshCompleted();
                                        },
                                        failure: (String error) {
                                          _refreshController.refreshFailed();
                                        },
                                        orElse: () {},
                                      );
                                    },
                                  ),
                                ),
                              ),
                              AnimateIfVisible(
                                key: const Key('item.2'),
                                duration: const Duration(milliseconds: 300),
                                builder: (
                                  BuildContext context,
                                  Animation<double> animation,
                                ) =>
                                    buildAnimatedItem(
                                  context,
                                  animation,
                                  child: BlocBuilder<LastMonthRatesSeriesBloc, LastMonthRatesSeriesState>(
                                    builder: (context, state) {
                                      return state.maybeWhen(
                                        loading: () => Container(),
                                        success: (AvgExchangeRatesSeries avgSeries, BidAskExchangeRatesSeries bidAskSeries) => LineChartDetailWidget(
                                          currency: widget.currency,
                                          avgSeries: avgSeries,
                                          bidAskSeries: bidAskSeries,
                                        ),
                                        failure: (String error) => const FailureWidget(error: "Nie udało się wczytać kursów waluty z ostatnich 30 dni"),
                                        orElse: () => Container(),
                                      );
                                    },
                                  ),
                                ),
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
      ),
    );
  }
}
