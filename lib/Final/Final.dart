import 'package:flutter/material.dart';
import 'package:flutterdersleri/Final/grafikkullanimi.dart';
import 'package:flutterdersleri/hakkinda/hakkinda.dart';
import 'gesturesyonlendirmeleri.dart';
import 'apiislemleri.dart';
import 'rehber.dart';

class finalasamalari extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Anasayfa'),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Card(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    'Sayfalar',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 25,
                    ),
                  ),
                ),
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
                  child: Text("Gestures İşlemleri"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => gesturesyonlendirmeleri(),
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
                  child: Text("Api ile Veri Çekme"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => apiislemleri(),
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
                  child: Text("Telefon Rehberi"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => rehber(),
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
                  child: Text("Grafik Kullanımı"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LineChartSample2(),
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
                  child: Text("Hakkında"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HakkindaSayfasi(),
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
