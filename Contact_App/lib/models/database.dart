import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:isar/isar.dart';
import 'package:isar_test/models/contact/contact.dart';
import 'package:path_provider/path_provider.dart';

Future<void> isarInit() async {
  final dir = await getApplicationSupportDirectory();
  isarDB = await Isar.open(
    schemas: [ContactSchema],
    directory: dir.path,
    inspector: !kReleaseMode,
  );
}

late Isar isarDB;
