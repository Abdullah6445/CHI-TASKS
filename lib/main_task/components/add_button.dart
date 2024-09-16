import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final VoidCallback addButtonFunction;

  const AddButton({super.key, required this.addButtonFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: addButtonFunction, child: const Text("Save")),
      ),
    );
  }
}
