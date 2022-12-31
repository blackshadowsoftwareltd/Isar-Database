import 'package:isar/isar.dart';
part 'model.g.dart';

@collection
class Teacher {
  Id? id;
  late String subject;
  // @Backlink(to: 'teacher') ///? Isar backlink
  // final stutdents = IsarLinks<Student>(); ///? Isar backlink

  Teacher({this.id, required this.subject});
}

@collection
class Student {
  Id? id;
  late String name;
  final teacher = IsarLink<Teacher>();

  Student({this.id, required this.name});
}
