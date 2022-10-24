import 'package:get/get.dart';
import 'package:my_first_flutter_project/bindings/counter_binding.dart';
import 'package:my_first_flutter_project/pages/home_page_getx.dart';
import 'package:my_first_flutter_project/pages/page_2.dart';
import 'package:my_first_flutter_project/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePageGetx(),
      binding: CounterBinding(),
    ),
    GetPage(
      name: Routes.PAGE_2,
      page: () => const Page2(),
    )
  ];
}
