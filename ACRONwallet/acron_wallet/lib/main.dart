import 'package:acron_wallet/view/Authenticate/Login.dart';
import 'package:acron_wallet/view/MyHome/Home.dart';
import 'package:acron_wallet/view/SplashScreen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Home());
  }
}
