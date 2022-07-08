import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../database/database.dart';
import '../models/contact/contact.dart' show Contact, GetContactCollection;

class ContactListNotifier extends ChangeNotifier {
  final contacts = isarDB.contacts;
  List<Contact> list = [];

  ///?
  Future<void> init() async {
    await contacts.where().findAll().then((value) {
      list.clear();
      list = value;
      notifyListeners();
    });
  }

  ///?
  Future<void> streamDB() async {
    Stream<void> stream = isarDB.contacts.watchLazy();
    stream.listen((event) async {
      await contacts.where().findAll().then((value) {
        list.clear();
        list = value;
        notifyListeners();
      });
    });
  }
}

final contactList =
    ChangeNotifierProvider<ContactListNotifier>((ref) => ContactListNotifier());
