import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportCenter extends StatefulWidget {
  const SupportCenter({super.key});

  @override
  State<SupportCenter> createState() => _SupportCenterState();
}

class _SupportCenterState extends State<SupportCenter> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text("Hee Hee.. I will never do you any favor to anyone ",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 30),),
      )),
    );
  }
}
