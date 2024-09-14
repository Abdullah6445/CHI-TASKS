import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: LayoutTask(),
      debugShowCheckedModeBanner: false,
    ));

class LayoutTask extends StatelessWidget {
  const LayoutTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Task')),
      body: Row(
        children: [Text('helloiurfyiudsh')],
      ),
    );
  }

  Widget _redContainer() => Container(color: Colors.red);
  Widget _greenContainer() => Container(color: Colors.green);
  Widget _redAndGreenContainer() => Container(
        color: Colors.red,
        padding: EdgeInsets.all(5),
        child: _greenContainer(),
      );
}
