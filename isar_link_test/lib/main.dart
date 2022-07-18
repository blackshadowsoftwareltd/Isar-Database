import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'model.dart'
    show GetStudentCollection, Student, StudentSchema, Teacher, TeacherSchema;

late Isar isar;
Future<void> main() async {
  final dir = await getApplicationSupportDirectory();

  isar = await Isar.open(
    schemas: [StudentSchema, TeacherSchema],
    directory: dir.path,
  );
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () async {
            final mathTeacher = Teacher()..subject = 'Math';
            final linda = Student()
              ..name = 'Linda'
              ..teachers.value = mathTeacher;
            await isar.writeTxn((isar) async {
              await isar.students.put(linda);
            });
          }),
          FloatingActionButton(onPressed: () async {
            // final st = await isar.students.where().findAll();
            // await st.first.teachers.load();
            // print(st.first.teachers.value?.subject);
            final st = await isar.students.where().findFirst();
            await st?.teachers.load();
            print(st?.name); //? print Linda
            print(st?.teachers.value?.subject); //? print null
          }),
        ],
      ),
    );
  }
}
