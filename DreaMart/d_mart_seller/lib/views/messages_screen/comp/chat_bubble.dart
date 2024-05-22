import 'package:d_mart_seller/const/const.dart';

Widget chatBubble() {
  return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: const BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            normalText(text: "Your message here..."),
            10.heightBox,
            normalText(text: "5.45PM"),
          ],
        ),
      ));
}
