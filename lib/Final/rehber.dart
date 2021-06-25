import 'package:flutter/material.dart';
import 'kisiekleme.dart';
import 'package:flutterdersleri/database/db_helper.dart';
import 'package:flutterdersleri/model/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class rehber extends StatefulWidget {
  @override
  _rehberState createState() => _rehberState();
}

class _rehberState extends State<rehber> {
  DbHelper _dbHelper;

  @override
  void initState() {
    _dbHelper = DbHelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Book"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => kisiekleme(
                contact: Contact(),
              ),
            ),
          );
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: _dbHelper.getContacts(),
        builder: (BuildContext context, AsyncSnapshot<List<Contact>> snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();
          if (snapshot.data.isEmpty) return Text("Your contact list empty");
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                Contact contact = snapshot.data[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => kisiekleme(
                          contact: contact,
                        ),
                      ),
                    );
                  },
                  child: Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                    background: Container(
                      alignment: Alignment.centerRight,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onDismissed: (direction) async {
                      await _dbHelper.removeContact(contact.id);

                      setState(() {});

                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("${contact.name} has been deleted"),
                        action: SnackBarAction(
                          label: "UNDO",
                          onPressed: () async {
                            await _dbHelper.insertContact(contact);

                            setState(() {});
                          },
                        ),
                      ));
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          contact.avatar == null ? "assets/img/person.jpg" : contact.avatar,
                        ),
                        child: Text(
                          contact.name[0].toUpperCase(),
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      title: Text(contact.name),
                      subtitle: Text(contact.phoneNumber),
                      trailing: IconButton(
                        icon: Icon(Icons.phone),
                        onPressed: () async => _callContact(contact.phoneNumber),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }

  _callContact(String phoneNumber) async {
    String tel = "tel:$phoneNumber";
    if (await canLaunch(tel)) {
      await launch(tel);
    }
  }
}

