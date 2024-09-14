import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'main_task_vm.dart';
import 'pages/mobile_view.dart';
import 'pages/website_view.dart';

class MainTaskVU extends StackedView<MainTaskVM> {
  @override
  Widget builder(BuildContext context, MainTaskVM viewModel, Widget? child) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth <= 600
            ? MobileView(
                vmm: viewModel,
              )
            : WebsiteView(
                vmm: viewModel,
              );
      },
    );
  }

  @override
  MainTaskVM viewModelBuilder(BuildContext context) {
    return MainTaskVM();
  }
}
