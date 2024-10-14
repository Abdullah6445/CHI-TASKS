import 'package:flutter/material.dart';

class LocalizationOne extends StatefulWidget {
  const LocalizationOne({super.key});

  @override
  State<LocalizationOne> createState() => _LocalizationOneState();
}

class _LocalizationOneState extends State<LocalizationOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page one"),
      ),
      body: const Center(child: Text("my name is abdullah")),
    );
  }
}
