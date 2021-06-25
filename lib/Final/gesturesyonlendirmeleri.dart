import 'package:flutter/material.dart';
import 'package:flutterdersleri/Final/grafikkullanimi.dart';
import 'package:flutterdersleri/hakkinda/hakkinda.dart';
import 'package:flutterdersleri/vize/hesapmakinesi.dart';
import 'Final.dart';

class gesturesyonlendirmeleri extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Anasayfa'),
        ),
      ),
      body: new Center(
        child: new GridView.count(
          primary: false,
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: <Widget>[
            new GestureDetector(
              onTap:() {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>HesapMakinesi()),);},
              child: Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: new Text(
                  """Tek Tıklama
              Hesap Makinesine Git""",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            new GestureDetector(
              onDoubleTap:() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=> HakkindaSayfasi()),);},
              child: Container(
                color: Colors.yellow,
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: new Text(
                  """Çift Tıklama
              Hakkında Sayfasına Git""",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            new GestureDetector(
              onLongPress:() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=> LineChartSample2()),);},
              child: Container(
                color: Colors.green,
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: new Text(
                  """Uzun Basma
              Grafik Sayfasına Git""",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
