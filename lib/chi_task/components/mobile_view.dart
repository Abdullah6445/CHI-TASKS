import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
            return Slidable(
              endActionPane: ActionPane(motion: DrawerMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    debugPrint("edit");
                    myDialog(context, index);
                    vm.nameController.text = vm.myDataList[index].name;
                    vm.ageController.text = vm.myDataList[index].age;
                    vm.cityController.text = vm.myDataList[index].city;

                    vm.notifyListeners();
                  },
                  backgroundColor: Colors.green,
                  icon: Icons.edit,
                  label: "Edit",
                ),
                SlidableAction(
                  onPressed: (context) {
                    vm.myDataList.removeAt(index);
                    vm.notifyListeners();
                    debugPrint("delete");
                  },
                  icon: Icons.delete,
                  backgroundColor: Colors.red,
                  label: "Delete",
                ),
                SlidableAction(
                  onPressed: (context) {},
                  icon: Icons.close,
                  label: "Close",
                ),

                // SlidableAction(
                //   onPressed: (context) {},
                //   icon: Icons.search,
                //   label: "seearch",
                // ),
              ]),
              child: ListTile(
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
              ),
            );
          },
        ),
      ),
    );
  }

  Future<dynamic> myDialog(BuildContext context, int index) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("edit"),
          content: Column(
            children: [
              TextFormField(
                controller: vm.nameController,
              ),
              TextFormField(
                controller: vm.ageController,
              ),
              TextFormField(
                controller: vm.cityController,
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel")),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      vm.myDataList[index].name = vm.nameController.text;
                      vm.myDataList[index].age = vm.ageController.text;
                      vm.myDataList[index].city = vm.cityController.text;
                      vm.notifyListeners();
                      Navigator.pop(context);
                    },
                    child: const Text("Edit")),
              ],
            )
          ],
        );
      },
    );
  }
}
