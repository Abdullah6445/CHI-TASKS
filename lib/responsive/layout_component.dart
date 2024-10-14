import 'package:flutter/material.dart';

class LayoutComponent extends StatefulWidget {
  final Widget mobileVieww;
  final Widget webVieww;

  const LayoutComponent(
      {super.key, required this.mobileVieww, required this.webVieww});

  @override
  State<LayoutComponent> createState() => _LayoutComponentState();
}

class _LayoutComponentState extends State<LayoutComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return constraints.maxWidth <= 600
              ? widget.mobileVieww
              : widget.webVieww;
        },
      ),
    );
  }
}
