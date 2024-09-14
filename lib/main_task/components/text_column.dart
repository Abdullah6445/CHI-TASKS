import 'package:flutter/material.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Master flutter on the web",
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height / 15,
              fontWeight: FontWeight.w900),
        ),
        const Text("Master flutter on the web"),
        const Text("Master flutter on the web"),
        const Text("Master flutter on the web"),
        const Text("Master flutter on the web"),
      ],
    );
  }
}
