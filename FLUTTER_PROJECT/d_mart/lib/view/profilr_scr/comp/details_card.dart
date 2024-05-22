import 'package:DreaMart/consts/colors.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget detalsCard({width,String? count, title}){
  return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              "${count}".text.color(darkFontGrey).size(16).make(),
              5.heightBox,
             "${title}".text.fontFamily(semibold).color(darkFontGrey).make(),
            ],).box.white.rounded.width(width).height(80).padding(EdgeInsets.all(4)).make();
}