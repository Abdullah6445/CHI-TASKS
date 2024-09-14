import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth <= 600
            ? Scaffold(
                appBar: MyAppBar(),
                body: MobileView(),
              )
            : constraints.maxWidth <= 700
                ? Scaffold(
                    body: WebTabView(),
                  )
                : Scaffold(
                    appBar: MyAppBar(),
                    body: WebView(),
                  );
      },
    );
  }

  AppBar MyAppBar() {
    return AppBar(
      title: const Text("page two"),
    );
  }

  Expanded singleLongContainer({required int flex}) {
    return Expanded(
        flex: flex,
        child: Container(
          height: 35,
          color: Colors.red,
        ));
  }
}

class WebView extends StatelessWidget {
  const WebView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      LongRedContainer(flex: 5),
      SpacerSizedBox(flex: 1),
      RedContainer(flex: 3),
      DecoratedContainer(flex: 2),
      DecoratedContainer(flex: 2),
      DecoratedContainer(flex: 2),
      MyText(
        text: "goodbye",
      ),
      DecoratedContainer(flex: 2),
      DecoratedContainer(flex: 2),
      DecoratedContainer(flex: 2),
      RedContainer(flex: 3),
      SpacerSizedBox(flex: 1),
      LongRedContainer(flex: 5),
    ]);
  }
}

class WebTabView extends StatelessWidget {
  const WebTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        LongRedContainer(flex: 5),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedContainer(flex: 2),
              DecoratedContainer(flex: 2),
              DecoratedContainer(flex: 2),
            ],
          ),
        ),
        Center(
          child: MyText(
            text: "goodbye",
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedContainer(flex: 2),
              DecoratedContainer(flex: 2),
              DecoratedContainer(flex: 2),
            ],
          ),
        ),
        LongRedContainer(flex: 5),
      ],
    );
  }
}

class TabView extends StatelessWidget {
  const TabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 50,
        child: Wrap(
          children: [
            LongRedContainer(flex: 5),
            SpacerSizedBox(flex: 1),
            RedContainer(flex: 3),
            DecoratedContainer(flex: 2),
            DecoratedContainer(flex: 2),
            DecoratedContainer(flex: 2),
            RotatedBox(
              quarterTurns: 1,
              child: MyText(
                text: "goodbye",
              ),
            ),
            DecoratedContainer(flex: 2),
            DecoratedContainer(flex: 2),
            DecoratedContainer(flex: 2),
            RedContainer(flex: 3),
            SpacerSizedBox(flex: 1),
            LongRedContainer(flex: 5),
          ],
        ),
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 50,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          LongRedContainer(flex: 5),
          SpacerSizedBox(flex: 1),
          RedContainer(flex: 3),
          DecoratedContainer(flex: 2),
          DecoratedContainer(flex: 2),
          DecoratedContainer(flex: 2),
          RotatedBox(
            quarterTurns: 1,
            child: MyText(
              text: "goodbye",
            ),
          ),
          DecoratedContainer(flex: 2),
          DecoratedContainer(flex: 2),
          DecoratedContainer(flex: 2),
          RedContainer(flex: 3),
          SpacerSizedBox(flex: 1),
          LongRedContainer(flex: 5),
        ]),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  String text;
  MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 10, backgroundColor: Colors.green),
    );
  }
}

class DecoratedContainer extends StatelessWidget {
  int flex;

  DecoratedContainer({super.key, required this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 25,
          width: 20,
          color: Colors.red,
          child: Center(
            child: Container(
              height: 7,
              width: 7,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

class RedContainer extends StatelessWidget {
  int flex;
  RedContainer({super.key, required this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 30,
            color: Colors.red,
          ),
        ));
  }
}

class SpacerSizedBox extends StatelessWidget {
  int flex;

  SpacerSizedBox({super.key, required this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: flex, child: SizedBox());
  }
}

class LongRedContainer extends StatelessWidget {
  int flex;
  LongRedContainer({super.key, required this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Container(
          height: 35,
          color: Colors.red,
        ));
  }
}
