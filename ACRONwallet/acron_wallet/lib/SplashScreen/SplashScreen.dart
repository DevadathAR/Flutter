import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: size.width * 1,
      height: size.height * 1,
      color: const Color.fromARGB(0, 255, 255, 255),
      child: const Image(
        image: AssetImage("assets/image/splash.png"),
        fit: BoxFit.fill,
      ),
    ));
  }
}
