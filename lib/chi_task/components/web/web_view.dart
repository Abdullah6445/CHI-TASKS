import 'package:flutter/material.dart';

import '../../chi_task_vm.dart';

class WebViewWidget extends StatelessWidget {
  ChiTaskVM vm;
  WebViewWidget({
    super.key,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Web View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: DataTable(
              headingTextStyle: const TextStyle(fontWeight: FontWeight.w900),
              border: TableBorder.all(),
              columns: const [
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Age")),
                DataColumn(label: Text("city")),
              ],
              rows: List.generate(
                vm.myDataList.length,
                (index) {
                  return DataRow(cells: [
                    DataCell(Text(vm.myDataList[index].name)),
                    DataCell(Text(vm.myDataList[index].age)),
                    DataCell(Text(vm.myDataList[index].city)),
                  ]);
                },
              )),
        ),
      ),
    );
  }
}
