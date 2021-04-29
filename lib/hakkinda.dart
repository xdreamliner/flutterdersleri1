import 'package:flutter/material.dart';

class HakkindaSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child: Text('HAKKINDA'),
        ),
      ),
      body: Container(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child:
            Card(
              color: Colors.lightBlueAccent,
              child: Text(' Bu uygulama Dart/Flutter dili ile Android Studio ortamında kodlanmıştır.',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Ubuntu',
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child:
            Card(
              color: Colors.yellow,
              child: Text('Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu'
                  'MOBİL PROGRAMLAMA dersi kapsamında 173006007 numaralı öğrenci, Yunus Emre Yılmaz '
                  'tarafından 30 Nisan 2021 günü yapılmıştır.',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Ubuntu',
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          RaisedButton(
              child: Text('Anasayfaya Dön'),
              onPressed: (){
                Navigator.pop(context);
              })
        ],),
      ),
    );
  }
}