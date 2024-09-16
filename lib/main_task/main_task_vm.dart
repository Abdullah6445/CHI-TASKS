import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainTaskVM extends BaseViewModel {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  bool bulbIconCheck = false;

  List<PersonModel> personList = [
    PersonModel(
      name: "abdullah",
      age: "22",
    ),
  ];

  buldHideFunction() {
    bulbIconCheck = !bulbIconCheck!;
    notifyListeners();
  }

  void onAdd() {
    if (formKey.currentState!.validate()) {
      personList
          .add(PersonModel(name: nameController.text, age: ageController.text));
      notifyListeners();
      nameController.clear();
      ageController.clear();
    }
  }
}

class PersonModel {
  String name;
  String age;
  PersonModel({required this.name, required this.age});
}
