import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'chi_task_vm.dart';
import 'components/mobile_view.dart';
import 'components/web_view.dart';

class ChiTaskVU extends StackedView<ChiTaskVM> {
  const ChiTaskVU({super.key});

  @override
  Widget builder(BuildContext context, ChiTaskVM viewModel, Widget? child) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth <= 600
            ? MobileViewWidget(
                vm: viewModel,
              )
            : WebViewWidget(
                vm: viewModel,
              );
      },
    );
  }

  @override
  ChiTaskVM viewModelBuilder(BuildContext context) {
    return ChiTaskVM();
  }
}
