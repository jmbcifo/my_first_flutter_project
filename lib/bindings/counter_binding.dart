import 'package:get/get.dart';
import 'package:my_first_flutter_project/controllers/counter_controller.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
  }
}
