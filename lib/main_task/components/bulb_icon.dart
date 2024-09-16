import 'package:flutter/material.dart';

import '../main_task_vm.dart';

class BulbIcon extends StatelessWidget {
  final MainTaskVM viewModel;
  const BulbIcon({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: const Icon(
          Icons.lightbulb,
          size: 40,
        ),
        color: viewModel.bulbIconCheck == true ? Colors.amber : Colors.grey,
        onPressed: viewModel.buldHideFunction,
      ),
    );
  }
}
