import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/utils/counter.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter.value++;
            print(counter.value);
          });
        },
      ),
      body: Center(
        child: Text(
          counter.value.toString(),
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
