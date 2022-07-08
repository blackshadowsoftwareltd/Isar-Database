import 'package:isar/isar.dart';

part 'contact.g.dart';

@Collection()
class Contacts {
  @Id()
  int? id;

  late String name;
  late int phone;
  late int age;
  late String address;
  late bool isMale;
}
