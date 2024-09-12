import 'package:chi_tasks/provider/counter_controller.dart';
import 'package:chi_tasks/provider/screen_twoo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("whole page rebuild");
    return Scaffold(
        appBar: AppBar(
          title: Text("page one"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ScreenTwoo();
                    },
                  ));
                },
                child: const Text("two"))
          ],
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
