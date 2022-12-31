import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'db.dart';

Future<void>  init() async {
  await initDir();
  await openAppConfigDB();
  WidgetsFlutterBinding.ensureInitialized();

  ///! containerRef for calling any references like containerRef.read(provider);
}

Future<void> initDir() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  appDir = Directory(join(dir.path, '.TestApp'));
  appDBDir = Directory(join(appDir.path, 'db'));
  appBackupDir = Directory(join(appDir.path, 'backup'));
}

late Directory appDir;
late Directory appDBDir;
late Directory appBackupDir;
