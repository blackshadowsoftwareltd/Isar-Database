import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_test/models/contact/contact.dart';

import '../../database/database.dart' show isarDB;
import 'filter.dart' show FilterView;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey.shade800,
      title: const Text('Isar Contact App'),
      actions: [
        ///? filter popup
        IconButton(
          icon: const Icon(Icons.filter_alt_outlined),
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return const FilterView();
              },
            );
          },
        ),

        ///? print database
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
    );
  }
}
