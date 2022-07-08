import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:isar/isar.dart' show Isar;
import 'package:isar_test/models/contact/contact.dart' show ContactSchema;
import 'package:path_provider/path_provider.dart'
    show getApplicationSupportDirectory;

late Isar isarDB;

Future<void> isarInit() async {
  final dir = await getApplicationSupportDirectory();
  isarDB = await Isar.open(
    schemas: [ContactSchema],
    directory: dir.path,
    inspector: !kReleaseMode,
  );
}
