import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'chi_task_vu.dart';
import 'page_two_vm.dart';

class PageTwoVU extends StackedView<PageTwoVM> {
  int numOne;
  int numTwo;

  int mulAddResult = 0;

  PageTwoVU({required this.numOne, required this.numTwo});

  @override
  Widget builder(BuildContext context, PageTwoVM viewModel, Widget? child) {
    mulAddResult = (numOne * 5) + (numTwo * 10);
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("5"),
              Text(" x"),
              SizedBox(
                width: 20,
              ),
              Text(numOne.toString()),
            ],
          ),
          Row(
            children: [
              Text("10"),
              Text(" x"),
              SizedBox(
                width: 20,
              ),
              Text(numTwo.toString()),
            ],
          ),
          Text(mulAddResult.toString()),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ChiTaskVU(
                      result: mulAddResult,
                    );
                  },
                ));
              },
              child: Text("move back")),
        ],
      ),
    );
  }

  @override
  PageTwoVM viewModelBuilder(BuildContext context) {
    return PageTwoVM();
  }
}
