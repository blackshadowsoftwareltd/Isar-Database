import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:isar_test/controller/controller.dart';
import 'package:isar_test/models/database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await isarInit();
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isar Test'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
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

class AddDataDialog extends StatelessWidget {
  const AddDataDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(hintText: 'Name'),
          ),
          TextField(
            controller: phoneController,
            decoration: const InputDecoration(hintText: 'Phone'),
          ),
          TextField(
            controller: addressController,
            decoration: const InputDecoration(hintText: 'Address'),
          ),
          TextField(
            controller: ageController,
            decoration: const InputDecoration(hintText: 'Age'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Create')),
          )
        ],
      ),
    ));
  }
}
