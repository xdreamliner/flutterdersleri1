import 'package:flutter/material.dart';

class MuzikListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child: Text('Müzik Listesi'),
        ),
      ),
      body: Container(
        child: Column(children: [
          const ListTile(
            leading: Icon(Icons.album),
            title:Text('Müslüm Gürses'),
            subtitle: Text('Yıllar Utansın'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Dinle')
              ),
              const SizedBox(width: 8),
              TextButton(onPressed: () {},
                child: const Text('İndir'),
              ),
            ],
          ),
          const ListTile(
            leading: Icon(Icons.album),
            title:Text('Azer Bülbül'),
            subtitle: Text('Başaramadım'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Dinle')
              ),
              const SizedBox(width: 8),
              TextButton(onPressed: () {},
                child: const Text('İndir'),
              ),
            ],
          ),
          const ListTile(
            leading: Icon(Icons.album),
            title:Text('Cengiz Kurtoğlu & Hakan Altun'),
            subtitle: Text('Yorgun Yıllarım'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Dinle')
              ),
              const SizedBox(width: 8),
              TextButton(onPressed: () {},
                child: const Text('İndir'),
              ),
            ],
          ),
          RaisedButton(
              child: Text('Anasayfaya Dön'),
              onPressed: (){
                Navigator.pop(context);
              }),
        ],),
      ),
    );
  }
}