import 'package:flutter/material.dart';

Widget BGwidget(context) {
  Size size = MediaQuery.of(context).size;
  return  Positioned.fill(
    child: Expanded(
      child: SizedBox(
        height: size.height*1,
        width: size.width*1,
        child: Image(
          image: AssetImage("assets/image/redBG.png"),
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
