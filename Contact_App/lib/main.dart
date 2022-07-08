import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_test/models/contact/contact.dart';
import 'package:isar_test/models/database.dart';

import 'dialog.dart' show AddDataDialog;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await isarInit();
  runApp(const MaterialApp(home: Home()));
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
              print(allContacts.length);
            },
          ),
        ],
      ),
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
}
