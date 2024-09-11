import 'package:stacked/stacked.dart';

class ChiTaskVM extends BaseViewModel {
  List<DataModel> myDataList = [
    DataModel(name: "Abdullah", age: "20", city: "rwp"),
    DataModel(name: "Ali Abbas", age: "23", city: "Multan"),
    DataModel(name: "Ali Hassan", age: "25", city: "Lahore"),
    DataModel(name: "Bilal", age: "20", city: "rwp"),
    DataModel(name: "Daniyal", age: "23", city: "Islamabad"),
    DataModel(name: "Ahsan", age: "25", city: "Lahore"),
  ];
}

class DataModel {
  String name;
  String age;
  String city;

  DataModel({
    required this.name,
    required this.age,
    required this.city,
  });
}
