import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/add_button.dart';
import '../components/bulb_icon.dart';
import '../components/card_list_view.dart';
import '../components/form_field.dart';
import '../components/mobile_image.dart';
import '../components/text_column.dart';
import '../main_task_vm.dart';

class WebsiteView extends StatelessWidget {
  final MainTaskVM viewModel;

  const WebsiteView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextColumn(),
                  ),
                  Expanded(
                    child: MobileImage(),
                  ),
                ],
              ),
            ),
            BulbIcon(
              viewModel: viewModel,
            ),
            const SizedBox(
              height: 10,
            ),
            if (viewModel.bulbIconCheck) ...[
              Form(
                key: viewModel.formKey,
                child: Row(
                  children: [
                    Expanded(
                        child: FormFields(
                      fieldController: viewModel.nameController,
                      hintText: "Enter Name",
                      keyboard: TextInputType.name,
                    )),
                    Expanded(
                      child: FormFields(
                        numberInputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                        ],
                        fieldController: viewModel.ageController,
                        keyboard: TextInputType.number,
                        hintText: "Enter Age",
                      ),
                    ),
                  ],
                ),
              ),
              AddButton(
                addButtonFunction: viewModel.onAdd,
              ),
            ],
            CardListView(viewModel: viewModel)
          ],
        ),
      ),
    );
  }
}
