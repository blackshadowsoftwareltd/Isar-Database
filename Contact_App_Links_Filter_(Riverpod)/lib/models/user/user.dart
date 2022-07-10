import 'package:isar/isar.dart';

import '../../helper/enums.dart'
    show Gender, GenderConverter, Relationship, RelationshipConverter;

part 'user.g.dart';

@Collection()
class User {
  @Id()
  int? id;

  late String fullName;

  late int age;

  late String address;

  @RelationshipConverter()
  late Relationship relationship;

  @GenderConverter()
  late Gender gender;

  @override
  String toString() => 'User(id: $id  )';
}


// flutter pub run build_runner build --delete-conflicting-outputs 