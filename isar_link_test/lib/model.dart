import 'package:isar/isar.dart';
part 'model.g.dart';
@Collection()
class Teacher {
  int? id;

  late String subject;
}

@Collection()
class Student {
  int? id;

  late String name;

  final teachers = IsarLink<Teacher>();
}
