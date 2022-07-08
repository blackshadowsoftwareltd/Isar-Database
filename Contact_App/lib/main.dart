import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_test/models/contact/contact.dart';
import 'package:isar_test/models/database.dart';

import 'dialog.dart' show AddDataDialog;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await isarInit();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    ///? watching a collection
    streamDatabase();
  }

  List<Contact> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isar Test'),
        actions: [
          IconButton(
            icon: const Icon(Icons.data_saver_off),
            onPressed: () async {
              ///
              ///? read database
              final contacts = isarDB.contacts;
              final allContacts = await contacts.where().findAll();
              for (var x in allContacts) {
                print(x.toString());
              }
              print('length ${allContacts.length}');
            },
          ),
        ],
      ),
      body: Text(list.length.toString()),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return const AddDataDialog();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  ///? watching a collection
  Future<void> streamDatabase() async {
    final contacts = isarDB.contacts;
    await contacts.where().findAll().then((value) {
      list.clear();
      list = value;
      setState(() {});
    });
    Stream<void> stream = isarDB.contacts.watchLazy();
    stream.listen((event) async {
      await contacts.where().findAll().then((value) {
        list.clear();
        list = value;
        setState(() {});
      });
    });
  }
}
