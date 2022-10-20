import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/pages/home_page_getx.dart';
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
      home: HomePageGetx(),
      // HomePage(),
    );
  }
}
