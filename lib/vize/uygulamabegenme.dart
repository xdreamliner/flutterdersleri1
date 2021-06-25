import 'package:flutter/material.dart';

class UygulamaBegenme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uygulamamı Beğendiniz Mi?")),
      body: UygulamaBegen(),
    );
  }
}

class UygulamaBegen extends StatefulWidget {
  @override
  _UygulamaBegenState createState() => _UygulamaBegenState();
}

class _UygulamaBegenState extends State<UygulamaBegen> {
  _showDialog(){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text("Beğendiyseniz Lütfen Evet Butonuna, Beğenmediyseniz Lütfen Hayır Butonuna Tıklayınız."),
          content: Text("Hatalarımızı En Kısa Zamanda Düzelteceğiz."),
          actions: [
            MaterialButton(
              child: Text("Evet"),
              color: Colors.blue,
              shape: StadiumBorder(),
              minWidth: 100,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: MaterialButton(
                child: Text("Hayır"),
                color: Colors.blue,
                shape: StadiumBorder(),
                minWidth: 100,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        RaisedButton(
          color: Colors.blue,
          onPressed: (){
            _showDialog();
          },
          child: Text("Uygulamamızı Beğendiniz Mi?"),
        ),
      ),
    );
  }
}