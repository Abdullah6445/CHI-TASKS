import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_controller.dart';

class ScreenTwoo extends StatelessWidget {
  const ScreenTwoo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("page two"),
        ),
        floatingActionButton: Consumer<CounterController>(
          builder: (context, myType, child) {
            debugPrint("only floating rebuild");

            return FloatingActionButton(
              onPressed: () {
                myType.increment();
              },
              child: const Icon(Icons.add),
            );
          },
        ),
        body: Consumer<CounterController>(
          builder: (context, myType, child) {
            debugPrint("only list rebuild");

            return ListView.builder(
              itemCount: myType.valueList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(index.toString()),
                );
              },
            );
          },
        ));
  }
}
