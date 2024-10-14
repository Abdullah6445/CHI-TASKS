import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class SharedPreferencesVM extends BaseViewModel {
  SharedPreferencesVM() {
    initilizePreferences();
  }

  SharedPreferences? prefs;

  initilizePreferences() async {
    prefs = await SharedPreferences.getInstance();

    loadCountPrefs();
    loadNamePrefs();
    loadSwitchPrefs();
    loadStringListPrefs();
  }

  int count = 0;
  List<String> country = [
    "pakistan",
    "nepal",
  ];

  addInList() {
    country.add(nameController.text);
    setStringListPrefs(country);
    nameController.clear();
    notifyListeners();
  }

  TextEditingController nameController = TextEditingController();
  increment() {
    count++;
    setCountPrefs(count);
    notifyListeners();
  }

  String? name;
  bool isOn = true;

  setCountPrefs(int countValue) {
    // SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs!.setInt('countKey', countValue);
  }

  loadCountPrefs() {
    // SharedPreferences prefs = await SharedPreferences.getInstance();

    count = prefs!.getInt('countKey') ?? 0;
    notifyListeners();
  }

  setNamePref(String newName) async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs!.setString('setName', newName);
  }

  loadNamePrefs() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();

    name = prefs!.getString('setName');
    notifyListeners();
  }

  setSwitchPrefs(bool newIsOn) async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs!.setBool('isOn', newIsOn);
  }

  loadSwitchPrefs() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();

    isOn = prefs!.getBool("isOn") ?? true;

    notifyListeners();
  }

  setStringListPrefs(List<String> newCountries) async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs!.setStringList('setStringList', newCountries);
  }

  loadStringListPrefs() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    country = prefs!.getStringList('setStringList') ?? [];
    notifyListeners();
  }
}
