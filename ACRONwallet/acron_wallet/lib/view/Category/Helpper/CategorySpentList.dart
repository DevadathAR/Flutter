import 'package:acron_wallet/const/colors.dart';
import 'package:flutter/material.dart';

class CategorySpentList extends StatelessWidget {
  const CategorySpentList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
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
          Padding(
            padding: const EdgeInsets.only(
                left: 35.0, right: 35, bottom: 35, top: 80),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: white),
                  color: white.withOpacity(0.20),
                ),
                height: double.infinity,
                width: double.infinity,
                child: const Column()), ///// replace coum by listvew.builder
          )
        ],
      ),
    );
  }
}
