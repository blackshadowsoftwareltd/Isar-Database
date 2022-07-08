import 'package:flutter/material.dart';

import 'controller/controller.dart';
import 'models/contact/contact.dart' show Contact, GetContactCollection;
import 'models/database.dart';

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
            child: ElevatedButton(
              child: const Text('Create'),
              onPressed: () async {
                final newContact = Contact()
                  ..name = nameController.text
                  ..phone = int.parse(phoneController.text)
                  ..address = addressController.text
                  ..age = int.parse(ageController.text)
                  ..isMale = true
                  ..isStared = false;

                ///? add new contact to database
                await isarDB.writeTxn((isar) async {
                  await isar.contacts.put(newContact);
                }).then((value) => Navigator.pop(context));
              },
            ),
          )
        ],
      ),
    ));
  }
}
