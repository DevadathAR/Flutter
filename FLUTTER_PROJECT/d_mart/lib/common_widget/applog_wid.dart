import 'package:d_mart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget applogWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
