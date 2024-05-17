import 'package:d_mart_seller/const/const.dart';

Widget productImages({required label,onPress}) {
  return "${label}"
      .text
      .bold
      .size(16.0)
      .color(fontGrey)
      .makeCentered()
      .box
      .color(lightGrey)
      .size(100, 100)
      .roundedSM
      .make();
}
