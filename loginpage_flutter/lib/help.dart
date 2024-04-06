import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text("Hee Hee.. I will never do you any favor to anyone.Go check our site for any help ",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 30),),
      )),
    );
}
}