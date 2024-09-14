import 'package:flutter/material.dart';

class FormFields extends StatelessWidget {
  String hintText;
  TextEditingController? fieldController;
  TextInputType keyboard;

  FormFields(
      {super.key,
      required this.keyboard,
      required this.hintText,
      this.fieldController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        validator: (value) {
          if (value!.trimLeft().isEmpty) {
            return "required";
          }
          return null;
        },
        keyboardType: keyboard,
        controller: fieldController,
        decoration: InputDecoration(
            hintText: hintText, border: const OutlineInputBorder()),
      ),
    );
  }
}
