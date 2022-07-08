import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_test/models/contact/contact.dart';

import '../../database/database.dart' show isarDB;
import 'tile.dart' show Tile;

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();

    ///? watching a collection
    streamDatabase();
  }

  List<Contact> list = [];
  @override
  Widget build(BuildContext context) {
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
