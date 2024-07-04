import 'package:acron_wallet/const/colors.dart';
import 'package:flutter/material.dart';

Widget ProfileTexfiled(context, {length, label}) {
  Size size = MediaQuery.of(context).size;

  return Container(
    width: size.width * length,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: pureblack),
      color: white,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          decoration: InputDecoration(
        hintText: label,
      )),
    ),
  );
}
