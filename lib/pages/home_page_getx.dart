import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/controllers/counter_controller.dart';
import 'package:my_first_flutter_project/widgets/button_control.dart';

class HomePageGetx extends StatelessWidget {
  const HomePageGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ButtonControl(
            icon: Icons.add,
            onPressed: () {
              counterController.increment();
            },
          ),
          const SizedBox(
            width: 10,
          ),
          ButtonControl(
            onPressed: () {
              counterController.decrement();
            },
            icon: Icons.remove,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              counterController.clear();
            },
            child: const Text(
              "AC",
              style: TextStyle(fontSize: 20),
            ),
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
