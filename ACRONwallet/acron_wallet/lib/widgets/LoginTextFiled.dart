import 'package:flutter/material.dart';

Widget LoginTextFiled({label}) {
  return Padding(
    padding: const EdgeInsets.only(left: 35, right: 35, top: 30),
    child: TextFormField(
      decoration: InputDecoration(
          hintText: label,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(const Radius.circular(20)))),
    ),
  );
}
