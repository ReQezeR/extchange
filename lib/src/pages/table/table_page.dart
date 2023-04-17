import 'package:auto_animated/auto_animated.dart';
import 'package:extchange/src/bloc/_index.dart';
import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/pages/detail/detail_widget.dart';
import 'package:extchange/src/pages/table/table_widget.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:extchange/src/widgets/currency_icon.dart';
import 'package:extchange/src/widgets/custom_button.dart';
import 'package:extchange/src/widgets/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:recase/recase.dart';
import 'package:theme_provider/theme_provider.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key, required this.currency, required this.name}) : super(key: key);
  final String currency;
  final String name;

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() async {
    if (mounted) {
      setState(() {});
    }
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
                      Center(
                        child: Container(
                          constraints: BoxConstraints(maxHeight: 45, minWidth: MediaQuery.of(context).size.width * 0.25),
                          decoration: BoxDecoration(
                            color: theme.mainSurfaceColor,
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
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
                                    color: theme.secondarySurfaceColor,
                                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Center(
                                    child: CurrencyIcon(currencyCode: widget.currency, size: 30, color: theme.secondaryAccentIconColor),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    ReCase(widget.name).titleCase,
                                    style: TextStyle(
                                      color: theme.mainTextColor,
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
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: RemoveOverscrollWidget(
                      child: SmartRefresher(
                        controller: _refreshController,
                        enablePullDown: true,
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
                                      failure: (String error) => Column(
                                        children: [
                                          AnimatedContainer(
                                            duration: const Duration(milliseconds: 400),
                                            height: _refreshController.isRefresh ? 0 : 40,
                                            child: AnimatedOpacity(
                                              duration: const Duration(milliseconds: 300),
                                              opacity: _refreshController.isRefresh ? 0 : 1,
                                              child: const PullToRefreshWidget(),
                                            ),
                                          ),
                                          const FailureWidget(error: "Nie udało się wczytać kursów waluty z ostatnich 30 dni"),
                                        ],
                                      ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
