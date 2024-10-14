import 'package:chi_tasks/chi_task/page_two_vu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'chi_task_vm.dart';

class ChiTaskVU extends StackedView<ChiTaskVM> {
  int? result;
  ChiTaskVU({this.result});

  @override
  Widget builder(BuildContext context, ChiTaskVM viewModel, Widget? child) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: viewModel.controllerOne,
          ),
          TextFormField(controller: viewModel.controllerTwo),
          Text("result : " + result.toString()),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return PageTwoVU(
                      numOne: int.parse(viewModel.controllerOne.text),
                      numTwo: int.parse(viewModel.controllerTwo.text),
                    );
                  },
                ));
              },
              child: const Text("move"))
        ],
      ),
    );
  }

  @override
  ChiTaskVM viewModelBuilder(BuildContext context) {
    return ChiTaskVM();
  }
}
