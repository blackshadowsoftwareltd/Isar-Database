import 'package:flutter/widgets.dart' show TextEditingController;

TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController ageController = TextEditingController();
TextEditingController addressController = TextEditingController();

///?
void setTextInController(
    {String? name, String? phone, String? age, String? address}) {
  nameController.text = name ?? '';
  phoneController.text = phone ?? '';
  ageController.text = age ?? '';
  addressController.text = address ?? '';
}

void clearController() {
  nameController.clear();
  phoneController.clear();
  addressController.clear();
  ageController.clear();
}
