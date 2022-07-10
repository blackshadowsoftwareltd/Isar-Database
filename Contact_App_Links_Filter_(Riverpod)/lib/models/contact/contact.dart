import 'package:isar/isar.dart';
import 'package:isar_test/models/user/user.dart' show GetUserCollection, User;

part 'contact.g.dart';

@Collection()
class Contact {
  @Id()
  int? id;

  late int phone;

  late bool isStared;

  late DateTime createdAt;

  late DateTime updatedAt;

  final users = IsarLink<User>();

  @override
  String toString() =>
      'Contact(id: $id, phone: $phone, isStared: $isStared, createdAt: $createdAt, updatedAt: $updatedAt, users: ${users.value.toString()})';
}


// flutter pub run build_runner build --delete-conflicting-outputs 