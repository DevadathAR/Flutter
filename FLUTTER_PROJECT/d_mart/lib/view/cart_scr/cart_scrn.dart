import 'package:d_mart/consts/consts.dart';
import 'package:flutter/material.dart';

class CartScrn extends StatelessWidget {
  const CartScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(color: Colors.white,
    child: "Cart is Empty!".text.fontFamily(semibold).color(darkFontGrey).makeCentered(),);
  }
}