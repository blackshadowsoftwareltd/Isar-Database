import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:isar_test/database/database.dart';
import 'package:isar_test/models/contact/contact.dart';
import 'package:isar_test/provider/provider.dart';

import '../home.dart' show white;

class FilterView extends ConsumerWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isStarred = ref.watch(filterByStarred.state);
    final ageStart = ref.watch(ageMin.state);
    final ageEnd = ref.watch(ageMax.state);
    return Dialog(
      backgroundColor: Colors.blueGrey.shade800,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Filter', style: TextStyle(color: white)),
          ),
          InkWell(
            onTap: () => isStarred.state = !isStarred.state,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(children: [
                const Text('Filter by ', style: TextStyle(color: white)),
                const Icon(Icons.star, color: white, size: 18),
                const Spacer(),
                Icon(
                    isStarred.state
                        ? Icons.check_circle_rounded
                        : Icons.check_circle_outline_outlined,
                    color: white,
                    size: 20),
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (context) => NumerDialog(
                          list: numbers
                              .take(ageEnd.state != null
                                  ? ageEnd.state! - 1
                                  : 100)
                              .toList()),
                    ).then((value) {
                      if (value != null) ageStart.state = int.parse(value);
                    });
                  },
                  child: Text('Age Start ${ageStart.state ?? ''}')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (context) => NumerDialog(
                          list: numbers.skip(ageStart.state ?? 0).toList()),
                    ).then((value) {
                      if (value != null) ageEnd.state = int.parse(value);
                    });
                  },
                  child: Text('Age End ${ageEnd.state ?? ''}')),
            ],
          ),
          const Divider(
            height: 15,
            color: white,
            thickness: .5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text('Close'),
                  onPressed: () => Navigator.pop(context)),
              ElevatedButton(
                  child: const Text('Filter'),
                  onPressed: () async {
                    List<Contact> contacts = [];
                    if (ageStart.state != null && ageEnd.state != null) {
                      contacts = await isarDB.contacts
                          .filter()
                          .isStaredEqualTo(isStarred.state)
                          .and()
                          .ageBetween(ageStart.state!, ageEnd.state!)
                          .findAll();
                    } else if (ageStart.state != null && ageEnd.state == null) {
                      contacts = await isarDB.contacts
                          .filter()
                          .isStaredEqualTo(isStarred.state)
                          .and()
                          .not()
                          .ageLessThan(ageStart.state!)
                          .findAll();
                    } else if (ageStart.state == null && ageEnd.state != null) {
                      contacts = await isarDB.contacts
                          .filter()
                          .isStaredEqualTo(isStarred.state)
                          .and()
                          .ageLessThan(ageEnd.state!)
                          .findAll();
                    }

                    ref.read(contactList.notifier).addAll(contacts);
                    Navigator.pop(context);
                  }),
            ],
          )
        ]),
      ),
    );
  }
}

class NumerDialog extends StatelessWidget {
  const NumerDialog({
    Key? key,
    required this.list,
  }) : super(key: key);
  final List<String> list;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 400,
        child: GridView.builder(
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, childAspectRatio: 1 / 1),
          itemBuilder: (context, index) => InkWell(
            onTap: () async {
              Navigator.pop(context, list[index]);
            },
            child: Center(child: Text(list[index])),
          ),
        ),
      ),
    );
  }
}

final numbers = List.generate(100, (index) => '${index + 1}');
