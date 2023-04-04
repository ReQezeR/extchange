import 'package:extchange/src/models/exchange_rates_series.dart';
import 'package:flutter/material.dart';

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
    var width = (MediaQuery.of(context).size.width - 30) / 4;
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
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
          return Colors.grey.shade400.withOpacity(0.7);
        }),
        columns: [
          DataColumn(
              label: const Expanded(
                child: Center(
                  child: Text(
                    'Data',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              onSort: (columnIndex, _) => sortByKey('date', columnIndex)),
          DataColumn(
              label: const Expanded(
                child: Center(
                  child: Text(
                    'Kupno',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              onSort: (columnIndex, _) => sortByKey('bid', columnIndex)),
          DataColumn(
              label: const Expanded(
                child: Center(
                  child: Text(
                    'Sprzedaż',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              onSort: (columnIndex, _) => sortByKey('ask', columnIndex)),
          DataColumn(
              label: const Expanded(
                child: Center(
                  child: Text(
                    'Średnio',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
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
                return Colors.grey.withOpacity(0.3);
              }
              return Colors.grey.withOpacity(0.5);
            }),
            cells: <DataCell>[
              DataCell(SizedBox(
                width: width,
                child: Center(
                  child: Text(
                    '${data[index]["date"]}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
              DataCell(SizedBox(
                width: width,
                child: Center(
                  child: Text(
                    '${data[index]["bid"]}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
              DataCell(SizedBox(
                width: width,
                child: Center(
                  child: Text(
                    '${data[index]["ask"]}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
              DataCell(Center(
                child: SizedBox(
                  width: width,
                  child: Center(
                    child: Text(
                      '${data[index]["mid"]}',
                      style: TextStyle(color: Colors.white),
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
