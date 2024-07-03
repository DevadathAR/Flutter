import 'package:acron_wallet/SplashScreen/SplashScreen.dart';
import 'package:acron_wallet/view/Category/Category.dart';
import 'package:acron_wallet/view/Category/Helpper/CategorySpentList.dart';
import 'package:acron_wallet/view/DummyTest/dummy.dart';
import 'package:acron_wallet/view/MyHome/Home.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
