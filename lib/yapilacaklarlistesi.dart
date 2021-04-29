import 'package:flutter/material.dart';

class YapilacaklarListesi extends StatelessWidget {
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