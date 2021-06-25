import 'package:flutter/material.dart';

class OgrenciBilgileri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
          Center(
            child: Text('Öğrenci Bilgileri'),
          ),
        ),
        body: ListView(
          children: const <Widget>[
            Card(
              child: ListTile(
                title: Text('AD-SOYAD:'),
                subtitle: Text('Yunus Emre YILMAZ'),
                trailing: Icon(Icons.view_headline, size: 50,),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('ÖĞRENCİ NUMARASI:'),
                subtitle: Text('173006007'),
                trailing: Icon(Icons.dialpad, size: 50,),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('KONUM'),
                subtitle: Text(
                    'Samsun'
                ),
                trailing: Icon(Icons.location_on, size:50),
                isThreeLine: true,
              ),
            ),
            Card(
              child: ListTile(
                title: Text('İLETİŞİM'),
                subtitle: Text('csyunus05@gmail.com'),
                trailing: Icon(Icons.markunread, size: 50,),
              ),
            ),
          ],
        )
    );
  }
}