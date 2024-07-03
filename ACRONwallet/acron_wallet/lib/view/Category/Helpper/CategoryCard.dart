import 'package:acron_wallet/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget CategoryCard(context, {label, iteamcolor,iteamamount,currency}) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: size.width * 0.45,
    width: size.width * 0.45,
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      color: white,border: Border.all(color: iteamcolor)
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
                color: iteamcolor, fontSize: 26, fontWeight: FontWeight.w700),
          ),
          Text(
            currency+iteamamount,
            style: TextStyle(
                color: iteamcolor, fontSize: 26, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ),
  );
}
