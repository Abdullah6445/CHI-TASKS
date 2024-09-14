import 'package:flutter/material.dart';

class LayoutPractice extends StatefulWidget {
  const LayoutPractice({super.key});

  @override
  State<LayoutPractice> createState() => _LayoutPracticeState();
}

class _LayoutPracticeState extends State<LayoutPractice> {
  bool tick = true;
  bool cross = true;
  bool? booleanValue;
  bool check = false;

  List<bool> tickList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<String> dataList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Laiout Practice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 2,
              width: MediaQuery.sizeOf(context).width / 2,
              child: Card(
                child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(1),
                      child: MyContainer(
                        color: dataList[index] == ""
                            ? Colors.amber.shade200
                            : dataList[index] == "true"
                                ? Colors.green
                                : Colors.red,
                        myFunction: () {
                          debugPrint("index is : $index");
                          // tickList[index] = !tickList[index];
                          if (check == true) {
                            tickList[index] = false;
                            check = false;
                          } else {
                            tickList[index] = true;
                            check = true;
                          }

                          debugPrint(tickList[index].toString());

                          dataList[index] = tickList[index].toString();

                          setState(() {});
                        },
                        data: dataList[index],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color color;
  final Function() myFunction;

  final String? data;

  const MyContainer(
      {super.key,
      this.data,
      this.color = Colors.green,
      required this.myFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunction,
      child: Container(
        color: color,
        child: Center(
            child: Text(
          data ?? "",
          style: const TextStyle(fontWeight: FontWeight.w900),
        )),
      ),
    );
  }
}
