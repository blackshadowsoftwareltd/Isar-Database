import 'package:flutter/material.dart';
import 'package:isar_test/models/database.dart';

import 'controller/controller.dart' show setTextInController;
import 'dialog.dart' show AddDataDialog;
import 'models/contact/contact.dart' show Contact, GetContactCollection;

class Tile extends StatelessWidget {
  const Tile({Key? key, required this.data}) : super(key: key);
  final Contact data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      ///? stared & unstared
      leading: IconButton(
          onPressed: () async {
            final contact = await isarDB.contacts.get(data.id!);
            contact!.isStared = !contact.isStared;
            await isarDB
                .writeTxn((isar) async => await isar.contacts.put(contact));
          },
          icon: Icon(data.isStared ? Icons.star : Icons.star_border)),

      ///? title
      title: Text(data.name),

      ///? subtitle
      subtitle: Text(data.phone.toString()),

      ///? update & delete
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ///? update
          IconButton(
              onPressed: () async {
                setTextInController(
                    name: data.name,
                    phone: data.phone.toString(),
                    address: data.address,
                    age: data.age.toString());
                await showDialog(
                  context: context,
                  builder: (context) {
                    return AddDataDialog(data: data);
                  },
                );
              },
              icon: const Icon(Icons.edit_note_rounded)),

          ///? delete
          IconButton(
              onPressed: () async {
                await isarDB.writeTxn((isar) async {
                  await isar.contacts.delete(data.id!);
                });
              },
              icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
