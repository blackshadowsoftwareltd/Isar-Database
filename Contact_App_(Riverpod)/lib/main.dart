import 'package:flutter/material.dart';
import 'package:isar_test/database/database.dart' show isarInit;
import 'screens/home.dart' show Home;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await isarInit();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
