import 'package:flutter/material.dart';
import 'package:isar_l/db.dart';

import 'config.dart';
import 'model/model.dart';

Future<void> main() async {
  await init();
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final mathTeacher = Teacher(id: 0, subject: 'Math');

        final linda = Student(id: 0, name: 'LindaLinda')
          ..teacher.value = mathTeacher;

        await isarDB.writeTxn(() async {
          await isarDB.students.put(linda);
          await isarDB.teachers.put(mathTeacher);
          await linda.teacher.save();
        });
        final x = await isarDB.students.get(0);
        print(x?.teacher.value?.subject.toString());
      }),
    );
  }
}
