import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Row(children: [
            singleLongContainer(5),
            const Expanded(flex: 1, child: SizedBox()),
            SingleRedContainer(3),
            const Expanded(flex: 2, child: DecoratedContainer()),
            const Expanded(flex: 2, child: DecoratedContainer()),
            const Expanded(flex: 2, child: DecoratedContainer()),
            const Text(
              "goodbye",
              style: TextStyle(fontSize: 10, backgroundColor: Colors.green),
            ),
            const Expanded(flex: 2, child: DecoratedContainer()),
            const Expanded(flex: 2, child: DecoratedContainer()),
            const Expanded(flex: 2, child: DecoratedContainer()),
            SingleRedContainer(3),
            const Expanded(flex: 1, child: SizedBox()),
            singleLongContainer(5),
          ]),
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: 30,
                  color: Colors.amber,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.brown,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.amber,
                  child: Text("text"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.brown,
                  child: Text("text"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.blue,
                  child: Text("text"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar MyAppBar() {
    return AppBar(
      title: const Text("page two"),
    );
  }

  Expanded singleLongContainer(int flex) {
    return Expanded(
        flex: flex,
        child: Container(
          height: 35,
          color: Colors.red,
        ));
  }

  Expanded SingleRedContainer(int flex) {
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

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
