import 'package:flutter/material.dart';
import 'package:isar_test/database/database.dart' show isarDB;
import 'package:isar_test/models/contact/contact.dart'
    show Contact, GetContactCollection;

import '../../controller/controller.dart' show setTextInController;
import '../home.dart' show white;
import 'dialog.dart' show AddDataDialog;

class Tile extends StatelessWidget {
  const Tile({Key? key, required this.data}) : super(key: key);
  final Contact data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(15)),
      child: Row(children: [
        ///? stared & unstared
        IconButton(
            onPressed: () async {
              final contact = await isarDB.contacts.get(data.id!);
              contact!.isStared = !contact.isStared;
              await isarDB
                  .writeTxn((isar) async => await isar.contacts.put(contact));
            },
            splashRadius: 30,
            icon: Icon(data.isStared ? Icons.star : Icons.star_border,
                color: white)),

        ///? info
        Expanded(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              ///? Name
              Text('Name: ${data.users.value?.fullName}',
                  style: const TextStyle(color: white)),

              ///? Phone
              Row(children: [
                const Icon(Icons.call, color: white, size: 18),
                const SizedBox(width: 3),
                Text(data.phone.toString(),
                    style: const TextStyle(color: white)),
              ]),

              ///? age & gander
              Row(children: [
                Text('Age: ${data.users.value?.age}',
                    style: const TextStyle(color: white)),
                const SizedBox(width: 10),
                // Icon(data.isMale ? Icons.man : Icons.woman,
                //     color: white, size: 18),
              ]),

              ///? Address
              Text('Address: ${data.users.value?.address}',
                  style: const TextStyle(color: white)),
            ])),

        ///? update & delete
        Column(mainAxisSize: MainAxisSize.min, children: [
          ///? update
          IconButton(
              onPressed: () async {
                setTextInController(
                    name: data.users.value?.fullName ?? '',
                    phone: data.phone.toString(),
                    address: data.users.value?.address ?? '',
                    age: data.users.value?.age.toString());
                await showDialog(
                  context: context,
                  builder: (context) {
                    return AddDataDialog(data: data);
                  },
                );
              },
              splashRadius: 30,
              icon: const Icon(Icons.edit_note_rounded, color: white)),

          ///? delete
          IconButton(
              onPressed: () async {
                await isarDB.writeTxn((isar) async {
                  await isar.contacts.delete(data.id!);
                });
              },
              splashRadius: 30,
              icon: const Icon(Icons.delete, color: white))
        ])
      ]),
    );
  }
}
