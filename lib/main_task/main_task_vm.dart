import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainTaskVM extends BaseViewModel {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<PersonModel> personList = [PersonModel(name: "abdullah", age: "22")];

  bool? bulbIconCheck = false;

  buldHideFunction() {
    bulbIconCheck = !bulbIconCheck!;
    notifyListeners();

    if (bulbIconCheck == true) {
      return Text("data");
    } else {
      return Container();
    }
  }

  onAdd() {
    if (formKey.currentState!.validate()) {
      personList
          .add(PersonModel(name: nameController.text, age: ageController.text));
      notifyListeners();
    }
    nameController.clear();
    ageController.clear();
  }
}

class PersonModel {
  String name;
  String age;
  PersonModel({required this.name, required this.age});
}
