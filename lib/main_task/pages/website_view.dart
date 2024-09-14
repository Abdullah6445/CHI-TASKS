import 'package:flutter/material.dart';

import '../components/add_button.dart';
import '../components/buld_icon.dart';
import '../components/card_list_view.dart';
import '../components/form_field.dart';
import '../components/mobile_image.dart';
import '../components/text_column.dart';
import '../main_task_vm.dart';

class WebsiteView extends StatelessWidget {
  MainTaskVM vmm;

  WebsiteView({super.key, required this.vmm});

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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 3,
                child: Column(
                  children: [
                    BuldIcon(
                      buldViewModel: vmm,
                      buldIconFunction: () {
                        debugPrint("buld clicked");
                      },
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
                                        fieldController: vmm.ageController,
                                        keyboard: TextInputType.number,
                                        hintText: "Enter Age",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              AddButton(
                                AddButtonFunction: () {
                                  vmm.onAdd();
                                },
                              ),
                            ],
                          )
                        : Container(
                            height: MediaQuery.sizeOf(context).height / 5,
                            // color: Colors.green,
                          ),

                    // Form(
                    //   key: vmm.formKey,
                    //   child:

                    //   Row(
                    //     children: [
                    //       Expanded(
                    //           child: FormFields(
                    //         fieldController: vmm.nameController,
                    //         hintText: "Enter Name",
                    //         keyboard: TextInputType.name,
                    //       )),
                    //       Expanded(
                    //         child: FormFields(
                    //           fieldController: vmm.ageController,
                    //           keyboard: TextInputType.number,
                    //           hintText: "Enter Age",
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // AddButton(
                    //   AddButtonFunction: () {
                    //     vmm.onAdd();
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: CardListView(vmm: vmm),
            )
          ],
        ),
      ),
    );
  }
}
