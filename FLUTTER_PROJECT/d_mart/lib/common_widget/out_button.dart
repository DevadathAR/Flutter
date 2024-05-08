import 'package:d_mart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourbutton({
  onPress,
  color,
  txtcolor,
  String ?txt
}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.all(12),
      ),
      onPressed: () {return onPress();
      },
      child: txt!.text.color(txtcolor).fontFamily(bold).make());
}
