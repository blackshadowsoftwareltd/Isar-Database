import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:isar_l/model/model.dart';
 

late final Isar isarDB;

Future<void> openAppConfigDB() async => isarDB = await Isar.open(
      [
        TeacherSchema,
        StudentSchema,
      ], 
      inspector: !kReleaseMode,
    );
