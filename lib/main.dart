import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdersleri/hakkinda.dart';
import 'package:flutterdersleri/muziklistesi.dart';
import 'package:flutterdersleri/ograncibilgileri.dart';
import 'package:flutterdersleri/renkler.dart';
import 'package:flutterdersleri/dersdurumbilgileri.dart';
import 'package:flutterdersleri/yapilacaklarlistesi.dart';
import 'package:flutterdersleri/ograncibilgileri.dart';
import 'package:flutterdersleri/hesapmakinesi.dart';
import 'package:flutterdersleri/uygulamabegenme.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anasayfa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child: Text('Anasayfa'),),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
             Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Card(
                  margin: EdgeInsets.all(5),
                child: Text('Sayfalar',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 25,
                  ),
                ),),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                  color: Colors.blue,
                  child: Text("Öğrenci Bilgileri"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OgrenciBilgileri(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                  color: Colors.blue,
                  child: Text("Müzik Listesi"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MuzikListesi(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                  color: Colors.blue,
                  child: Text("Renkler"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Renkler(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                  color: Colors.blue,
                  child: Text("Basit Hesap Makinesi"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HesapMakinesi(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                  color: Colors.blue,
                  child: Text("Yapılacaklar Listesi"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YapilacaklarListesi(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                  color: Colors.blue,
                  child: Text("Ders Durum Bilgileri"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TabloApp(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                color: Colors.blue,
                  child: Text("Hakkinda Sayfasi"),
                  onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HakkindaSayfasi(),
                  ),
                );
              }),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                  color: Colors.blue,
                  child: Text("Uygulama Beğenme"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UygulamaBegenme(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

