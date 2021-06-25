import 'package:flutter/material.dart';

class HesapMakinesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basit Hesap Makinesi")),
      body: YeniUygulama(),
    );
  }
}

class YeniUygulama extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<YeniUygulama> {

  num sayi1,sayi2, sonuc;

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  sayitopla(){
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc=sayi1+sayi2;
    });
  }

  sayicikar(){
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc=sayi1-sayi2;
    });
  }

  sayicarp(){
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc=sayi1*sayi2;
    });
  }

  sayibol(){
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc=sayi1/sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          children: [
            Text("Sonuç: "+sonuc.toString()),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            RaisedButton(onPressed: sayitopla,
                child: Text("Topla")
            ),
            RaisedButton(onPressed: sayicikar,
                child: Text("Çıkar")
            ),
            RaisedButton(onPressed: sayicarp,
              child: Text("Çarp"),
            ),
            RaisedButton(onPressed: sayibol,
              child: Text("Böl"),
            ),
          ],
        ),
      ),
    );
  }
}