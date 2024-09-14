import 'package:flutter/material.dart';

import '../components/add_button.dart';
import '../components/buld_icon.dart';
import '../components/card_list_view.dart';
import '../components/form_field.dart';
import '../components/mobile_image.dart';
import '../components/text_column.dart';
import '../main_task_vm.dart';

class MobileView extends StatelessWidget {
  MainTaskVM vmm;
  MobileView({super.key, required this.vmm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: vmm.formKey,
            child: Column(
              children: [
                const MobileImage(),
                const TextColumn(),
                BuldIcon(
                  buldViewModel: vmm,
                  buldIconFunction: () {},
                ),
                vmm.bulbIconCheck == true
                    ? Column(
                        children: [
                          FormFields(
                            fieldController: vmm.nameController,
                            hintText: "Enter Name",
                            keyboard: TextInputType.name,
                          ),
                          FormFields(
                            fieldController: vmm.ageController,
                            keyboard: TextInputType.number,
                            hintText: "Enter Age",
                          ),
                          AddButton(
                            AddButtonFunction: () {
                              vmm.onAdd();
                            },
                          ),
                        ],
                      )
                    : Container(
                        height: MediaQuery.sizeOf(context).height / 4,
                      ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: CardListView(vmm: vmm),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
