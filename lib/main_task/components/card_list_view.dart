import 'package:flutter/material.dart';

import '../main_task_vm.dart';

class CardListView extends StatelessWidget {
  const CardListView({
    super.key,
    required this.viewModel,
  });

  final MainTaskVM viewModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: viewModel.personList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(viewModel.personList[index].name),
                  Text(viewModel.personList[index].age),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
