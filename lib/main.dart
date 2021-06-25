import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Final/Final.dart';
import 'vize/Vİze.dart';
import 'vize/Vİze.dart';
import 'Final/Final.dart';

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
                  child: Text("Vize Aşamaları"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VizeAsamalari(),
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
                  child: Text("Final Aşamaları"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => finalasamalari(),
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

