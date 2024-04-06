import 'package:flutter/material.dart';
// import 'package:my_insta/insta_home.dart';
import 'package:my_insta/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: LogInPage()
    );
  }
}
