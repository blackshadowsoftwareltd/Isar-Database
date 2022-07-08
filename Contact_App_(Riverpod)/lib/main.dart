import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:isar_test/database/database.dart' show isarInit;
import 'screens/home.dart' show Home;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await isarInit();
  runApp(const ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  ));
}
