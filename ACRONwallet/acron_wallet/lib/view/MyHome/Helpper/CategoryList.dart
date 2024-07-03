import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/const/lists.dart';
import 'package:flutter/material.dart';

Widget CategoryList(context, {label, iteamColor}) {
  Size size = MediaQuery.of(context).size;
  final color = iteamColor ?? listcolor[0];
  final title = label?? listcategory[0];

  return Column(
    children: [
      const SizedBox(
        height: 8,
      ),
      Container(
        height: 40,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: white,
            border: Border.all(color: color)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: color, fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    ],
  );
}

