import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:isar_test/models/contact/contact.dart';
import 'package:isar_test/provider/provider.dart';

import '../../database/database.dart' show isarDB;
import 'tile.dart' show Tile;

class Body extends ConsumerStatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  ConsumerState<Body> createState() => _BodyState();
}

class _BodyState extends ConsumerState<Body> {
  @override
  void initState() {
    super.initState();
    ref.read(contactList.notifier).init();
    ref.read(contactList.notifier).streamDB();
  }

  List<Contact> list = [];
  @override
  Widget build(BuildContext context) {
    final list = ref.watch(contactList).list;
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => Tile(data: list[index]));
  }

  ///? watching a collection
  Future<void> streamDatabase() async {
    final contacts = isarDB.contacts;

    ///? existing data
    await contacts.where().findAll().then((value) {
      list.clear();
      list = value;
      setState(() {});
    });

    ///? stream
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
