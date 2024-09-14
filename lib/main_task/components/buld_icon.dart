import 'package:flutter/material.dart';

import '../main_task_vm.dart';

class BuldIcon extends StatelessWidget {
  VoidCallback buldIconFunction;

  MainTaskVM buldViewModel;
  BuldIcon({
    super.key,
    required this.buldViewModel,
    required this.buldIconFunction,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.lightbulb,
      ),
      color: buldViewModel.bulbIconCheck == true ? Colors.amber : Colors.grey,
      onPressed: buldViewModel.buldHideFunction,
    );
  }
}
