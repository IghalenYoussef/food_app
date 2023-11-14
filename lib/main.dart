import 'package:flutter/material.dart';
import 'package:food_app/color.dart';
import 'package:food_app/routers/app_route_name.dart';
import 'package:food_app/routers/app_route_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutePage.routes,
      initialRoute: AppRouteName.root,
      theme: ThemeData(
          primaryColor: primary,
          scaffoldBackgroundColor: background,
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: white,
              titleTextStyle: TextStyle(color: black, fontSize: 20))),
    );
  }
}
