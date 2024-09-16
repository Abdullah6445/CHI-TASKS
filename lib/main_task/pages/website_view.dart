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
  final MainTaskVM vmm;

  const WebsiteView({super.key, required this.vmm});

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
              viewModel: vmm,
            ),
            vmm.bulbIconCheck == true
                ? Column(
                    children: [
                      Form(
                        key: vmm.formKey,
                        child: Row(
                          children: [
                            Expanded(
                                child: FormFields(
                              fieldController: vmm.nameController,
                              hintText: "Enter Name",
                              keyboard: TextInputType.name,
                            )),
                            Expanded(
                              child: FormFields(
                                // numberInputFormatters: [
                                //   FilteringTextInputFormatter.allow(
                                //       RegExp("[0-9]")),
                                // ],
                                fieldController: vmm.ageController,
                                keyboard: TextInputType.number,
                                hintText: "Enter Age",
                              ),
                            ),
                          ],
                        ),
                      ),
                      AddButton(
                        addButtonFunction: () {
                          vmm.onAdd();
                        },
                      ),
                    ],
                  )
                : Container(
                    height: MediaQuery.sizeOf(context).height * .01,
                  ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: CardListView(viewModel: vmm),
            )
          ],
        ),
      ),
    );
  }
}
