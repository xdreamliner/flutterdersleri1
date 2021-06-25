import 'package:flutter/material.dart';

class TabloApp extends StatelessWidget {
  const TabloApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:
          Center(
            child: Text('Ders Durum Bilgileri'),
          ),),
        body: const TabloAppWidget(),
      ),
    );
  }
}

class TabloAppWidget extends StatelessWidget {
  const TabloAppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Ders Adı',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Kredi',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Durumu',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Mobil Programlama')),
              DataCell(Text('5')),
              DataCell(Text('Geçti')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Lisans Bitirme Projesi')),
              DataCell(Text('8')),
              DataCell(Text('Geçti')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Lisans Bitirme Tezi')),
              DataCell(Text('5')),
              DataCell(Text('Geçti')),
            ],
          ),
        ],
      ),
    );
  }
}