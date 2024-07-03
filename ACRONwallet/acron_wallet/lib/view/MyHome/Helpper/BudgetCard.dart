import 'package:acron_wallet/const/colors.dart';
import 'package:flutter/material.dart';

Widget BudgetCard(context, {label, currency, amount, iteamColor}) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: size.width * 0.35,
    width: size.width * 0.45,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      border: Border.all(
        color: pureblack,
      ),
      color: white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          label,
          style: const TextStyle(
              color: fontblack, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Divider(
            color: fontblack,
          ),
        ),
        Text(
          currency + amount,
          style: TextStyle(
              color: iteamColor, fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
