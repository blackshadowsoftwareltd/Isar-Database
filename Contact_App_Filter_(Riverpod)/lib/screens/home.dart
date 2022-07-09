import 'package:flutter/material.dart';
import 'package:isar_test/controller/controller.dart' show clearController;
import 'package:isar_test/screens/components/appbar.dart' show HomeAppBar;

import 'components/body.dart' show Body;
import 'components/dialog.dart' show AddDataDialog;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: const PreferredSize(
          preferredSize: Size(double.maxFinite, 60), child: HomeAppBar()),

      ///? body
      body: const Body(),

      ///? create button
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          ///? clear all controller
          clearController();

          ///? show dialog for insert data & save to database
          await showDialog(
              context: context,
              builder: (context) {
                return const AddDataDialog();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
  const white = Colors.white;