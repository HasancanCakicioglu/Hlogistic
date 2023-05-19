import 'package:flutter/material.dart';

class CustomTable extends StatefulWidget {
  const CustomTable({Key? key}) : super(key: key);

  @override
  _CustomTableState createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  List<List<String>> tableData = [
    [
      'Trucking 1',
      'FTL',
      'Tonnage',
      'Lademeter',
      'CBM',
      'Warehouse Cost palletized (forkliftable)',
      'Warehouse Cost Non-Palletized',
      'Not Tahran',
      'TONNAGE',
      'LADEMETER',
      'CBM',
      'CURRENCY'
    ],
    [
      'Europe',
      '2600',
      'kg*0,158',
      'ldm*219,23',
      'cbm*35,62',
      'min 15 eur or 7 eur per palette',
      'min 15 eur or 3 eur per 100 kg',
      'on the way of Tahran like Zanjan-Sahlan-Tebriz (50-100 EUR), Arak (175-200 eur), Isfahan-Yazd-Sirjan (250-300 EUR), Busehr-Bandar Abbas-Mashad (400 EUR)',
      '',
      '',
      '',
      'EUR'
    ],
    [
      '450',
      '0',
      '162,00',
      '0,80',
      '0,00',
      '0',
      '0',
      '0',
      "",
      "",
      "",
      "",
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: List.generate(tableData.length, (rowIndex) {
        return TableRow(
          children: List.generate(
            tableData[rowIndex].length,
            (colIndex) => GestureDetector(
                onTap: () {
                  _showInputDialog(context, rowIndex, colIndex);
                },
                child: tableCell(tableData[rowIndex][colIndex])),
          ),
        );
      }),
    );
  }

  Widget tableCell(String text) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(text),
    );
  }

  void _showInputDialog(BuildContext context, int rowIndex, int colIndex) {
    showDialog(
      context: context,
      builder: (context) {
        String cellValue = tableData[rowIndex][colIndex];
        return AlertDialog(
          title: const Text('Edit Cell'),
          content: TextField(
            onChanged: (newValue) {
              cellValue = newValue;
            },
            decoration: const InputDecoration(hintText: 'Enter new value'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  tableData[rowIndex][colIndex] = cellValue;
                });
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
