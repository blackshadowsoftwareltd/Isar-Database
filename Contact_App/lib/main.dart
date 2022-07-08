import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_test/body.dart';
import 'package:isar_test/controller/controller.dart';
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

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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

      ///? body
      body: const Body(),

      ///? create button
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          ///? clear all controller
          clearController();

          ///? show dialog for insert data & save to database
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
}
