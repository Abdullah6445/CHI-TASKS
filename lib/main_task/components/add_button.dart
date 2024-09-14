import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  VoidCallback AddButtonFunction;

  AddButton({super.key, required this.AddButtonFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: AddButtonFunction, child: const Text("Add")),
      ),
    );
  }
}
