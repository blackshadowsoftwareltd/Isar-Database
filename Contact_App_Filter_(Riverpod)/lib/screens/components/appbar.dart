import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ConsumerWidget, WidgetRef;
import 'package:isar/isar.dart';
import 'package:isar_test/models/contact/contact.dart';
import 'package:isar_test/provider/provider.dart';

import '../../database/database.dart' show isarDB;
import 'filter.dart' show FilterView;

class HomeAppBar extends ConsumerWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Colors.blueGrey.shade800,
      title: const Text('Isar Contact App'),
      actions: [
        ///? filter popup
        IconButton(
          icon: const Icon(Icons.filter_alt_outlined),
          onPressed: () async {
          await  initAll(ref);
            await showDialog(
              context: context,
              builder: (context) {
                return const FilterView();
              },
            );
          },
        ),

        ///? print database
        InkWell(
          child: const Padding(
              padding: EdgeInsets.all(5), child: Icon(Icons.data_saver_off)),
          onTap: () async {
            ///
            ///? read database
            final contacts = isarDB.contacts;
            final allContacts = await contacts.where().findAll();
            for (var x in allContacts) {
              print(x.toString());
            }
            print('length ${allContacts.length}');
          },
          onLongPress: () async => await ref.read(contactList.notifier).init(),
        ),
      ],
    );
  }
}
