import 'package:flutter/material.dart';

import 'chi_task/chi_task_vu.dart';
import 'localization_practice/localization_one.dart';
import 'main_task/main_task_vu.dart';
import 'responsive/layout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: const LocalizationOne(),
    );
  }
}
