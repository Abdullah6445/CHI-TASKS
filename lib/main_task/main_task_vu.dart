import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import 'main_task_vm.dart';

class MainTaskVU extends StackedView<MainTaskVM> {
  @override
  Widget builder(BuildContext context, MainTaskVM viewModel, Widget? child) {
    return WebsiteView();
  }

  @override
  MainTaskVM viewModelBuilder(BuildContext context) {
    return MainTaskVM();
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

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
                      buldIconFunction: () {
                        debugPrint("buld clicked");
                      },
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: FormFields(
                          hintText: "Enter Name",
                        )),
                        Expanded(
                            child: FormFields(
                          hintText: "Enter Age",
                        )),
                      ],
                    ),
                    AddButton(
                      AddButtonFunction: () {
                        debugPrint("add button clicked");
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const Card(
                    child: Row(
                      children: [
                        Text("data 1"),
                        Text("data 2"),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WebsiteView extends StatelessWidget {
  const WebsiteView({
    super.key,
  });

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
                      buldIconFunction: () {
                        debugPrint("buld clicked");
                      },
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: FormFields(
                          hintText: "Enter Name",
                        )),
                        Expanded(
                            child: FormFields(
                          hintText: "Enter Age",
                        )),
                      ],
                    ),
                    AddButton(
                      AddButtonFunction: () {
                        debugPrint("add button clicked");
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const Card(
                    child: Row(
                      children: [
                        Text("data 1"),
                        Text("data 2"),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MobileImage extends StatelessWidget {
  const MobileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
        image: NetworkImage(
            "https://strapi.dhiwise.com/uploads/crafting_a_captivating_flutter_splash_screen_igniting_visual_appealog_image_6535f1634dc09_80e4a43a6c.webp"));
  }
}

class TextColumn extends StatelessWidget {
  const TextColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Master flutter on the web",
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height / 15,
              fontWeight: FontWeight.w900),
        ),
        const Text("Master flutter on the web"),
        const Text("Master flutter on the web"),
        const Text("Master flutter on the web"),
        const Text("Master flutter on the web"),
      ],
    );
  }
}

class BuldIcon extends StatelessWidget {
  VoidCallback buldIconFunction;
  BuldIcon({
    super.key,
    required this.buldIconFunction,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.lightbulb,
      ),
      color: Colors.amber,
      onPressed: buldIconFunction,
    );
  }
}

class FormFields extends StatelessWidget {
  String hintText;
  TextEditingController? fieldController;

  FormFields({super.key, required this.hintText, this.fieldController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        controller: fieldController,
        decoration: InputDecoration(
            hintText: hintText, border: const OutlineInputBorder()),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  VoidCallback AddButtonFunction;

  AddButton({super.key, required this.AddButtonFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: AddButtonFunction, child: const Text("Add")),
      ),
    );
  }
}
