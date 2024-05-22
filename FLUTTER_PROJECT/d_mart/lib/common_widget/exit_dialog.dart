import 'package:DreaMart/common_widget/out_button.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:flutter/services.dart';

Widget exitDialog(context) {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        "Confrim".text.fontFamily(bold).size(18).color(darkFontGrey).make(),
        const Divider(),
        10.heightBox,
        "Are you sure you want to exit?"
            .text
            .fontFamily(semibold)
            .size(16)
            .color(darkFontGrey)
            .make(),
        10.heightBox,
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ourbutton(
                color: redColor,
                onPress: () {
                  SystemNavigator.pop();
                },
                txtcolor: whiteColor,
                txt: "Yes"),
            ourbutton(
                color: redColor,
                onPress: () {Navigator.pop(context);},
                txtcolor: whiteColor,
                txt: "No")
          ],
        )
      ],
    ).box.color(lightGrey).padding(const EdgeInsets.all(12)).roundedSM.make(),
  );
}
