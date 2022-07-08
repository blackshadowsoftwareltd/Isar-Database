import 'package:isar/isar.dart';
import 'package:isar_test/models/contacts/contact.dart';
import 'package:path_provider/path_provider.dart';

Future<void> isarInit() async {
  final dir = await getApplicationSupportDirectory();
  isar = await Isar.open(
    schemas: [ContactsSchema],
    directory: dir.path,
  );
}

late Isar isar;
