import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import 'main_task_vm.dart';

class MainTaskVU extends StackedView<MainTaskVM> {
  @override
  Widget builder(BuildContext context, MainTaskVM viewModel, Widget? child) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.amber.shade100,
                  child: Center(child: Text("text")),
                )),
                Expanded(
                    child: Container(
                  color: Colors.green.shade100,
                  child: Center(child: Text("image")),
                )),
              ],
            ),
          ),

          // Expanded(
          //   child: Row(
          //     children: [
          //       Expanded(
          //           child: Container(
          //         color: Colors.lightBlue.shade100,
          //         child: Center(child: Text("text")),
          //       )),
          //       Expanded(
          //           child: Container(
          //         color: Colors.orange.shade200,
          //         child: Center(child: Text("image")),
          //       )),
          //     ],
          //   ),
          // )

          // Row(
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           "Master flutter on the web",
          //           style: TextStyle(
          //               fontSize: MediaQuery.sizeOf(context).height / 15,
          //               fontWeight: FontWeight.w900),
          //         ),
          //         Text("Master flutter on the web"),
          //         Text("Master flutter on the web"),
          //         Text("Master flutter on the web"),
          //         Text("Master flutter on the web"),
          //       ],
          //     ),
          //     Image(
          //         image: NetworkImage(
          //             "https://strapi.dhiwise.com/uploads/crafting_a_captivating_flutter_splash_screen_igniting_visual_appealog_image_6535f1634dc09_80e4a43a6c.webp")),
          //   ],
          // )
        ],
      ),
    );
  }

  @override
  MainTaskVM viewModelBuilder(BuildContext context) {
    return MainTaskVM();
  }
}
