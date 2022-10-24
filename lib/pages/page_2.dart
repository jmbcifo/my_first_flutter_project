import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/controllers/counter_controller.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
          heroTag: "Boton 1",
          child: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          }),
      body: Center(
        child: Container(
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HOLA SOY LA PÁGINA 2",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
