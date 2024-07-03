import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/const/fixed.dart';
import 'package:acron_wallet/widgets/LoginTextFiled.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: size.width * 1,
          height: size.height * 1,
          color: const Color.fromARGB(0, 255, 255, 255),
          child: const Image(
            image: AssetImage("assets/image/redBG.png"),
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: size.height * .25,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.125,
                ),
                const Text(
                  "ACRON wallet",
                  style: TextStyle(
                      color: white, fontSize: 38, fontWeight: FontWeight.w800),
                ),
                const Text(
                  version,
                  style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: white),
            height: size.height * .5,
            width: size.width * .75,
            child: Column(
              children: [
                const Text(
                  "LOGIN",
                  style: TextStyle(
                      color: pureblack,
                      fontSize: 38,
                      fontWeight: FontWeight.w800),
                ),
                LoginTextFiled(label: "Name"),
                LoginTextFiled(label: "Password"),
                LoginTextFiled(label: "Re type password"),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
