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
  int? currentSortColumn = null;
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
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      child: DataTable(
        sortColumnIndex: currentSortColumn,
        sortAscending: isAscending,
        columnSpacing: 10,
        headingRowColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          return Colors.grey.withOpacity(0.7);
        }),
        columns: [
          DataColumn(
              label: const Expanded(child: Text('Data', style: TextStyle(fontStyle: FontStyle.italic))),
              onSort: (columnIndex, _) => sortByKey('date', columnIndex)),
          DataColumn(
              label: const Expanded(child: Text('Kupno', style: TextStyle(fontStyle: FontStyle.italic))),
              onSort: (columnIndex, _) => sortByKey('bid', columnIndex)),
          DataColumn(
              label: const Expanded(child: Text('Sprzedaż', style: TextStyle(fontStyle: FontStyle.italic))),
              onSort: (columnIndex, _) => sortByKey('ask', columnIndex)),
          DataColumn(
              label: const Expanded(child: Text('Średnio', style: TextStyle(fontStyle: FontStyle.italic))),
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
              DataCell(Text('${data[index]["date"]}')),
              DataCell(Text('${data[index]["bid"]}')),
              DataCell(Text('${data[index]["ask"]}')),
              DataCell(Text('${data[index]["mid"]}')),
            ],
          ),
        ),
      ),
    );
  }
}
