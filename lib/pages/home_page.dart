import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/utils/counter.dart';
import 'package:my_first_flutter_project/widgets/button_control.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ButtonControl(
            heroTag: "Boton 1",
            icon: Icons.add,
            onPressed: () {
              setState(() {
                //counter.value++;
                counter.increment();
              });
            },
          ),
          const SizedBox(
            width: 10,
          ),
          ButtonControl(
            heroTag: "Boton 2",
            onPressed: () {
              setState(() {
                counter.decrement();
              });
            },
            icon: Icons.remove,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter.clear();
              });
            },
            child: const Text(
              "AC",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          counter.value.toString(),
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
