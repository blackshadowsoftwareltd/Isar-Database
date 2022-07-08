import 'package:isar/isar.dart';

part 'contact.g.dart';

@Collection()
class Contact {
  @Id()
  int? id;

  late String name;
  late int phone;
  late int age;
  late String address;
  late bool isMale;
  late bool isStared;

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, phone: $phone, age: $age, address: $address, isMale: $isMale, isStared: $isStared}';
  }
}
