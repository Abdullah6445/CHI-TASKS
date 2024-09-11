import 'package:flutter/material.dart';

import '../chi_task_vm.dart';

class MobileViewWidget extends StatelessWidget {
  ChiTaskVM vm;
  MobileViewWidget({
    super.key,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: vm.myDataList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                vm.myDataList[index].name,
              ),
              subtitle: Text(
                vm.myDataList[index].city,
              ),
              leading: CircleAvatar(
                child: Text(
                  vm.myDataList[index].age,
                ),
              ),
            );
            Card(
              elevation: 5,
              color: Colors.green,
              child: Text(vm.myDataList[index].name),
            );
          },
        ),
      ),
    );
  }
}
