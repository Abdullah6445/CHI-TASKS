import 'package:flutter/material.dart';

import '../main_task_vm.dart';

class CardListView extends StatelessWidget {
  const CardListView({
    super.key,
    required this.vmm,
  });

  final MainTaskVM vmm;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vmm.personList.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          color: Colors.grey.shade400,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(vmm.personList[index].name),
                Text(vmm.personList[index].age),
              ],
            ),
          ),
        );
      },
    );
  }
}
