import 'package:chi_tasks/provider/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          useMaterial3: false,
        ),
        home: const ProviderScreen(),
      ),
    );
  }
}
