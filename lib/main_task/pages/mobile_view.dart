import 'package:flutter/material.dart';
import '../components/add_button.dart';
import '../components/bulb_icon.dart';
import '../components/card_list_view.dart';
import '../components/form_field.dart';
import '../components/mobile_image.dart';
import '../components/text_column.dart';
import '../main_task_vm.dart';

class MobileView extends StatelessWidget {
  final MainTaskVM viewModel;

  const MobileView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                viewModel.onShowFullList();
              },
              icon: const Icon(Icons.list_alt_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: viewModel.formKey,
            child: Column(
              children: [
                const MobileImage(),
                const TextColumn(),
                BulbIcon(
                  viewModel: viewModel,
                ),
                viewModel.bulbIconCheck == true
                    ? Column(
                        children: [
                          FormFields(
                            fieldController: viewModel.nameController,
                            hintText: "Enter Name",
                            keyboard: TextInputType.name,
                          ),
                          FormFields(
                            // numberInputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp("[0-9]")),
                            // ],
                            fieldController: viewModel.ageController,
                            keyboard: TextInputType.number,
                            hintText: "Enter Age",
                          ),
                          AddButton(
                            addButtonFunction: () {
                              viewModel.onAdd();
                            },
                          ),
                        ],
                      )
                    : Container(
                        height: MediaQuery.sizeOf(context).height * .01,
                      ),
                SizedBox(
                  height: viewModel.isFullList
                      ? MediaQuery.sizeOf(context).height
                      : MediaQuery.sizeOf(context).height / 2,
                  child: CardListView(viewModel: viewModel),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
