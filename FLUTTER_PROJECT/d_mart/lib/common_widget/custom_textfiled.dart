import 'package:d_mart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget CustomTestFiled({String? title,String? hint,controller,isPass}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text
          .color(redColor)
          .fontFamily(semibold)
          .fontWeight(FontWeight.w800)
          .make(),
      5.heightBox,
      TextFormField(
        obscureText: isPass,
        controller: controller,
        decoration:  InputDecoration(
            hintStyle: const TextStyle(color: fontGrey,fontFamily: semibold),
            fillColor: lightGrey,
            border: InputBorder.none,
            filled: true,
            focusedBorder: const OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            hintText: hint,
            isDense: true),
      ),20.heightBox,
      // pswd.text
      //     .color(redColor)
      //     .fontWeight(FontWeight.w800)
      //     .fontFamily(semibold)
      //     .make(),
      // 10.heightBox,
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: TextFormField(
      //     decoration: const InputDecoration(
      //         hintStyle: TextStyle(color: lightGrey),
      //         fillColor: lightGrey,
      //         filled: true,
      //         focusedBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.all(Radius.circular(20))),
      //         hintText: email_hint,
      //         isDense: true),
      //   ),
      // ),
    ],
  );
}
