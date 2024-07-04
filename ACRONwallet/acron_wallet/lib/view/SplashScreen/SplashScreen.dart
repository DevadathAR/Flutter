import 'package:acron_wallet/view/Authenticate/Login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

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
