import 'package:chi_tasks/practice/page_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PracticePage extends StatefulWidget {
  const PracticePage({super.key});

  @override
  State<PracticePage> createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("page 1"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PageTwo(),
                      ));
                },
                child: const Text("Move"))
          ],
        ),
        body: Column(
          children: [
            Expanded(flex: 1, child: Container(color: Colors.red)),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.green,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    child: const Text("asd"),
                  ),
                ),
              ],
            ),
            Expanded(flex: 1, child: Container(color: Colors.green)),
            Expanded(flex: 1, child: Container(color: Colors.orange)),
            Expanded(flex: 1, child: Container(color: Colors.brown)),
            Expanded(flex: 1, child: Container(color: Colors.black)),
            Expanded(flex: 1, child: Container(color: Colors.purple)),
            Expanded(flex: 1, child: Container(color: Colors.pink)),
            Expanded(flex: 1, child: Container(color: Colors.brown)),

            Expanded(flex: 1, child: Container(color: Colors.red)),
            Expanded(flex: 1, child: Container(color: Colors.green)),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.green,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    child: const Text("asd"),
                  ),
                ),
              ],
            ),
            Expanded(flex: 1, child: Container(color: Colors.orange)),
            Expanded(flex: 1, child: Container(color: Colors.brown)),
            Expanded(flex: 3, child: Container(color: Colors.black)),
            Expanded(flex: 1, child: Container(color: Colors.purple)),
            Expanded(flex: 1, child: Container(color: Colors.pink)),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.green,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    child: const Text("asd"),
                  ),
                ),
              ],
            ),
            Expanded(flex: 5, child: Container(color: Colors.brown)),
            Expanded(flex: 1, child: Container(color: Colors.red)),
            Expanded(flex: 1, child: Container(color: Colors.green)),
            Expanded(flex: 1, child: Container(color: Colors.orange)),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.green,
                    child: const Text("asd"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.orange,
                    child: const Text("asd"),
                  ),
                ),
              ],
            ),
            Expanded(flex: 1, child: Container(color: Colors.brown)),
            Expanded(flex: 4, child: Container(color: Colors.black)),
            Expanded(flex: 1, child: Container(color: Colors.purple)),
            Expanded(flex: 1, child: Container(color: Colors.pink)),
            Expanded(flex: 1, child: Container(color: Colors.brown)),
            Expanded(flex: 1, child: Container(color: Colors.red)),
            Expanded(flex: 1, child: Container(color: Colors.green)),
            Expanded(flex: 1, child: Container(color: Colors.orange)),
            Expanded(flex: 1, child: Container(color: Colors.brown)),
            Flexible(
              child: Container(
                color: Colors.amber,
                child: const Text("uiiuhiuhjhakshdg"),
              ),
            ),
            Expanded(flex: 1, child: Container(color: Colors.purple)),
            Expanded(flex: 1, child: Container(color: Colors.pink)),
            Expanded(flex: 1, child: Container(color: Colors.brown)),
            Expanded(flex: 1, child: Container(color: Colors.red)),

            Expanded(flex: 1, child: Container(color: Colors.green)),
            Expanded(flex: 1, child: Container(color: Colors.orange)),
            Expanded(flex: 1, child: Container(color: Colors.brown)),
            Expanded(flex: 1, child: Container(color: Colors.black)),
            Expanded(flex: 3, child: Container(color: Colors.purple)),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.pink,
                  child: const Text("sdf"),
                )),
            Expanded(flex: 1, child: Container(color: Colors.brown)),
            Expanded(flex: 1, child: Container(color: Colors.red)),
            Expanded(flex: 1, child: Container(color: Colors.green)),
            Expanded(flex: 1, child: Container(color: Colors.orange)),
            Expanded(flex: 1, child: Container(color: Colors.brown)),
            Expanded(flex: 1, child: Container(color: Colors.black)),
            Expanded(flex: 1, child: Container(color: Colors.purple)),

            // Expanded(flex: 0, child: Text("data"))

            // Expanded(flex: 0, child: Container(color: Colors.orange)),
          ],
        ));
  }
}

// Colors.red
