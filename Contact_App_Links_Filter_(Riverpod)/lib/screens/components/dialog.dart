import 'package:flutter/material.dart';
import 'package:isar_test/helper/enums.dart' show Relationship, Gender;
import 'package:isar_test/models/user/user.dart';

import '../../controller/controller.dart'
    show
        addressController,
        ageController,
        clearController,
        nameController,
        phoneController;
import '../../database/database.dart';
import '../../models/contact/contact.dart' show Contact, GetContactCollection;

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
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    child: const Text('Close'),
                    onPressed: () => Navigator.pop(context)),

                ///? save or update
                ElevatedButton(
                  child: Text(data != null ? 'Update' : 'Create'),
                  onPressed: () async {
                    if (data == null) {
                      final time = DateTime.now();
                      final newUser = User()
                        ..fullName = nameController.text
                        ..address = addressController.text
                        ..relationship = Relationship.single
                        ..gender = Gender.male
                        ..age = 5;
                      final newContact = Contact()
                        ..phone = int.parse(phoneController.text)
                        ..isStared = false
                        ..createdAt = time
                        ..updatedAt = time
                        ..users.value = newUser;

                      ///? add new contact to database

                      await isarDB.writeTxn((isar) async {
                        await isar.users.put(newUser);
                        await isar.contacts.put(newContact, saveLinks: true);
                      }).then((value) async {
                        await newContact.users.load();
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
                        updateContact?.users.value?.fullName =
                            nameController.text;
                        updateContact?.phone = int.parse(phoneController.text);
                        updateContact?.users.value?.address =
                            addressController.text;
                        updateContact?.users.value?.age =
                            int.parse(ageController.text);
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
