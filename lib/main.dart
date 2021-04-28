import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                        builder: (context) => YeniSayfaDort(),
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
                        builder: (context) => YeniSayfa(),
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
                        builder: (context) => YeniSayfaIki(),
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
                        builder: (context) => YeniSayfaUc(),
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

class YeniSayfa extends StatelessWidget {
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

class YeniSayfaIki extends StatelessWidget {
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

class TabloApp extends StatelessWidget {
  const TabloApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title:
        Center(
        child: Text('Ders Durum Bilgileri'),
        ),),
        body: const TabloAppWidget(),
      ),
    );
  }
}

class TabloAppWidget extends StatelessWidget {
  const TabloAppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Ders Adı',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Kredi',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Durumu',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Mobil Programlama')),
              DataCell(Text('5')),
              DataCell(Text('Geçti')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Lisans Bitirme Projesi')),
              DataCell(Text('8')),
              DataCell(Text('Geçti')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Lisans Bitirme Tezi')),
              DataCell(Text('5')),
              DataCell(Text('Geçti')),
            ],
          ),
        ],
      ),
    );
  }
}

class YeniSayfaUc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child: Text('Yapılacaklar Listesi'),
        ),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text('İlk Derse Katılım ve Ders Formuna Yorum Yapıldı Mı?'),
              subtitle: Text('İlk derse katılım yapıldı, 14 Mart tan önce foruma yorum yapıldı.'),
              trailing: Icon(Icons.done, size: 50,),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('20 Farklı Widget Kullanımı'),
              subtitle: Text('20 den fazla widget kullanıldı.'),
              trailing: Icon(Icons.done, size: 50,),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('10 Farklı Ekran Tasarımı'),
              subtitle: Text(
                  'Anasayfa ile birlikte 10 farklı ekran tasarımı yapıldı.'
              ),
              trailing: Icon(Icons.done, size:50),
              isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Uygulama Android Markette Yayınlandı Mı?'),
              subtitle: Text('Uygulama Android ya da İos markette yayınlanmadı.'),
              trailing: Icon(Icons.cancel, size: 50,),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Uygulama GitHub Üzerinde Yayınlandı Mı?'),
              subtitle: Text('Uygulama GitHub üzerinde yayınlandı.'),
              trailing: Icon(Icons.done, size: 50,),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Uygulamanın Hakkında Sayfasına Gerekli Bilgiler Girildi Mi?'),
              subtitle: Text('Uygulamanın hakkında sayfasına gerekli bilgiler girildi.'),
              trailing: Icon(Icons.done, size: 50,),
            ),
          ),
        ],
      )
    );
  }
}

class YeniSayfaDort extends StatelessWidget {
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

