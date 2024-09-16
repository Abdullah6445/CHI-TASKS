import 'package:flutter/material.dart';

class FormFields extends StatelessWidget {
  final String hintText;
  final TextEditingController? fieldController;
  final TextInputType keyboard;
  // final numberInputFormatters;
  // final FilteringTextInputFormatter.allow(RegExp("[0-9]")),
  // ];

  const FormFields({
    super.key,
    required this.keyboard,
    required this.hintText,
    this.fieldController,
    // this.numberInputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        // inputFormatters: numberInputFormatters,
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
