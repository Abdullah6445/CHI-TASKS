import 'package:flutter/material.dart';

class LocalizationTwo extends StatefulWidget {
  const LocalizationTwo({super.key});

  @override
  State<LocalizationTwo> createState() => _LocalizationTwoState();
}

class _LocalizationTwoState extends State<LocalizationTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page two"),
      ),
      body: const Center(child: Text("my name is abdullah in urdu")),
    );
  }
}
