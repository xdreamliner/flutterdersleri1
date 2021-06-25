import 'package:flutter/material.dart';

class Renkler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: AppBar(
            title:
            Center(
              child: Text('Renkler'),
            ),
          ),
          body:
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child:Text('Kırmızı'),),
                color: Colors.red,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child:Text('Mavi'),),
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child:Text('Yeşil'),),
                color: Colors.green,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child:Text('Sarı'),),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child:Text('Siyah', style: TextStyle(color: Colors.white),),),
                color: Colors.black,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child:Text('Beyaz'),),
                color: Colors.white,
              ),
            ],
          )
      );
  }
}