import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/pages/home_page_getx.dart';
import 'package:my_first_flutter_project/routes/app_pages.dart';
import 'package:my_first_flutter_project/routes/app_routes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,
    );
  }
}
