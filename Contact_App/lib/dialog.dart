import 'package:flutter/material.dart';

import 'controller/controller.dart';
import 'models/contact/contact.dart' show Contact, GetContactCollection;
import 'models/database.dart';

class AddDataDialog extends StatelessWidget {
  const AddDataDialog({Key? key, this.data}) : super(key: key);
  final Contact? data;

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    child: const Text('Close'),
                    onPressed: () => Navigator.pop(context)),

                ///? save or update
                ElevatedButton(
                  child: Text(data != null ? 'Update' : 'Create'),
                  onPressed: () async {
                    if (data == null) {
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
                      }).then((value) {
                        clearController();
                        Navigator.pop(context);
                      });
                    }

                    ///? update
                    else {
                      final updateContact =
                          await isarDB.contacts.get(data!.id!);
                      updateContact?.isStared = true;
                      await isarDB.writeTxn((isar) async {
                        updateContact?.name = nameController.text;
                        updateContact?.phone = int.parse(phoneController.text);
                        updateContact?.address = addressController.text;
                        updateContact?.age = int.parse(ageController.text);
                        await isar.contacts.put(updateContact!);
                      }).then((value) {
                        clearController();
                        Navigator.pop(context);
                      });
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
