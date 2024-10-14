import 'package:chi_tasks/responsive/layout_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutComponent(
      mobileVieww: Center(
          child: Text(
        "mobileeee",
        style: TextStyle(fontSize: MediaQuery.sizeOf(context).height * .05),
      )),
      webVieww: Center(
          child: Text(
        "web viewwww",
        style: TextStyle(fontSize: MediaQuery.sizeOf(context).height * .05),
      )),
    );
  }
}
