import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

import 'shared_preferences_vm.dart';

void main() {
  runApp(const MaterialApp(
    home: SharedPreferencesVU(),
  ));
}

class SharedPreferencesVU extends StackedView<SharedPreferencesVM> {
  const SharedPreferencesVU({super.key});

  @override
  Widget builder(
      BuildContext context, SharedPreferencesVM viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter by shared prefs"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.increment,
        child: const Icon(Icons.add),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              onChanged: (value) {
                viewModel.name = value;
                viewModel.setNamePref(viewModel.name.toString());
                viewModel.notifyListeners();
              },
              controller: viewModel.nameController,
              decoration: const InputDecoration(hintText: "enter name"),
            ),
          ),
          viewModel.isOn
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        viewModel.name ?? "ab",
                        style: const TextStyle(fontSize: 30),
                      ),
                      Text(
                        viewModel.count.toString(),
                        style: const TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                )
              : const SizedBox(
                  height: 40,
                ),
          Switch(
            value: viewModel.isOn,
            onChanged: (value) {
              viewModel.isOn = value;
              viewModel.setSwitchPrefs(viewModel.isOn);
              viewModel.notifyListeners();
            },
          ),
          ElevatedButton(onPressed: viewModel.addInList, child: Text("add")),
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.country.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(viewModel.country[index]),
                );
              },
            ),
          )
        ],
      )),
    );
  }

  @override
  SharedPreferencesVM viewModelBuilder(BuildContext context) {
    return SharedPreferencesVM();
  }
}
