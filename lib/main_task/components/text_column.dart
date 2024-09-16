import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          "MASTER FLUTTER ON THE WEB",
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height / 20,
              fontWeight: FontWeight.w900),
        ),
        headingText(context,
            title:
                '- Advance Nested Layout\n- Production practices for Web\n- Complete guide on building forms\n- Build a real world example with Stacked'),
      ],
    );
  }

  Widget headingText(BuildContext context, {required String title}) {
    return Text(
      title,
      style: TextStyle(fontSize: MediaQuery.sizeOf(context).height * .03),
    );
  }
}
