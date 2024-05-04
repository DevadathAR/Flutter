
import 'package:d_mart/view/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: fontGrey),
                backgroundColor: Colors.transparent)),
        debugShowCheckedModeBanner: false,
        title: appname,
        home: const Home());
  }
}
