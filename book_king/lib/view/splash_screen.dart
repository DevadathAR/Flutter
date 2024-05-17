import 'package:book_king/const/colors.dart';
import 'package:book_king/const/string.dart';
import 'package:book_king/view/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => const LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Opacity(
              opacity: .25,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image(
                    image: AssetImage("assets/image/book.jpg"),
                    fit: BoxFit.cover),
              )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  appname,
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.w800),
                ),
                const Text(
                  appversion,
                  style: TextStyle(color: black),
                ),
                LottieBuilder.network(
                  "https://lottie.host/22bc3f6a-0e8d-4a64-bf25-beabf73361e6/lnni0OWFyf.json",
                  alignment: Alignment.bottomCenter,
                ),
                Container(
                    alignment: Alignment.center,
                    child: const Text(own, style: TextStyle(color: black)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
