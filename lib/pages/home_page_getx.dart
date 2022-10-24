import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/controllers/counter_controller.dart';

import 'package:my_first_flutter_project/pages/page_2.dart';
import 'package:my_first_flutter_project/widgets/button_control.dart';

class HomePageGetx extends StatelessWidget {
  const HomePageGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ButtonControl(
            heroTag: "Boton 1",
            icon: Icons.add,
            onPressed: () {
              counterController.increment();
            },
          ),
          const SizedBox(
            width: 10,
          ),
          ButtonControl(
            heroTag: "Boton 2",
            onPressed: () {},
            icon: Icons.remove,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "Boton 3",
            onPressed: () {},
            child: const Text(
              "AC",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "Boton 4",
            onPressed: () {
              Get.to(() => Page2());
            },
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: Obx(
        () => Center(
          child: Text(
            counterController.result.value.toString(),
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
