import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:extchange/src/themes/theme_options.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class CurrencyTable extends StatefulWidget {
  const CurrencyTable({Key? key, required this.avgSeries, required this.bidAskSeries}) : super(key: key);
  final AvgExchangeRatesSeries avgSeries;
  final BidAskExchangeRatesSeries bidAskSeries;

  @override
  State<CurrencyTable> createState() => _CurrencyTableState();
}

class _CurrencyTableState extends State<CurrencyTable> {
  List<Map> data = [];
  int? currentSortColumn;
  bool isAscending = true;

  @override
  void initState() {
    for (int i = 0; i < widget.avgSeries.rates.length; i++) {
      data.add({
        'date': widget.avgSeries.rates[i].effectiveDate,
        'bid': widget.bidAskSeries.rates[i].bidValue,
        'ask': widget.bidAskSeries.rates[i].askValue,
        'mid': widget.avgSeries.rates[i].midValue
      });
    }
    super.initState();
  }

  void sortByKey(String key, int columnIndex) {
    setState(() {
      if (currentSortColumn != columnIndex) {
        currentSortColumn = columnIndex;
        isAscending = true;
        data.sort((productA, productB) => productA[key].compareTo(productB[key]));
      } else {
        if (isAscending == true) {
          isAscending = false;
          data.sort((productA, productB) => productB[key].compareTo(productA[key]));
        } else if (isAscending == false) {
          currentSortColumn = null;
          isAscending = true;
          data.sort((productA, productB) => productA[key].compareTo(productB[key]));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = ThemeProvider.optionsOf<CustomThemeOptions>(context);
    var width = (MediaQuery.of(context).size.width - 30) / 4;
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: theme.backgroundColor,
      ),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(bottom: 15),
      width: MediaQuery.of(context).size.width,
      child: DataTable(
        sortColumnIndex: currentSortColumn,
        sortAscending: isAscending,
        columnSpacing: 0,
        horizontalMargin: 0,
        headingRowColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          return theme.mainSurfaceColor;
        }),
        columns: [
          DataColumn(
              label: Expanded(
                child: Center(
                  child: Text(
                    'Data',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      color: theme.mainTextColor,
                    ),
                  ),
                ),
              ),
              onSort: (columnIndex, _) => sortByKey('date', columnIndex)),
          DataColumn(
              label: Expanded(
                child: Center(
                  child: Text(
                    'Kupno',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      color: theme.mainTextColor,
                    ),
                  ),
                ),
              ),
              onSort: (columnIndex, _) => sortByKey('bid', columnIndex)),
          DataColumn(
              label: Expanded(
                child: Center(
                  child: Text(
                    'Sprzedaż',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      color: theme.mainTextColor,
                    ),
                  ),
                ),
              ),
              onSort: (columnIndex, _) => sortByKey('ask', columnIndex)),
          DataColumn(
              label: Expanded(
                child: Center(
                  child: Text(
                    'Średnio',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      color: theme.mainTextColor,
                    ),
                  ),
                ),
              ),
              onSort: (columnIndex, _) => sortByKey('mid', columnIndex)),
        ],
        rows: List<DataRow>.generate(
          widget.avgSeries.rates.length,
          (int index) => DataRow(
            color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
              if (index.isEven) {
                return theme.mainSurfaceColor.withOpacity(0.5);
              }
              return theme.mainSurfaceColor;
            }),
            cells: <DataCell>[
              DataCell(SizedBox(
                width: width,
                child: Center(
                  child: Text(
                    '${data[index]["date"]}',
                    style: TextStyle(color: theme.secondaryTextColor),
                  ),
                ),
              )),
              DataCell(SizedBox(
                width: width,
                child: Center(
                  child: Text(
                    '${data[index]["bid"]}',
                    style: TextStyle(color: theme.secondaryTextColor),
                  ),
                ),
              )),
              DataCell(SizedBox(
                width: width,
                child: Center(
                  child: Text(
                    '${data[index]["ask"]}',
                    style: TextStyle(color: theme.secondaryTextColor),
                  ),
                ),
              )),
              DataCell(Center(
                child: SizedBox(
                  width: width,
                  child: Center(
                    child: Text(
                      '${data[index]["mid"]}',
                      style: TextStyle(color: theme.secondaryTextColor),
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
