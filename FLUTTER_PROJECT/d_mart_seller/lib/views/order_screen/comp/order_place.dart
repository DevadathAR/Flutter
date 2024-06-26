import 'package:d_mart_seller/const/const.dart';

Widget orderPlaceDetails({title1, title2, d1, d2}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            boldText(text: "$title1",color: purpleColor),
            boldText(text: "$d1",color: red),
          ],
        ),
        SizedBox(
          width: 130,
          child: Column(
            children: [
            boldText(text: "$title2",color: purpleColor),
            boldText(text: "$d2",color: fontGrey),
            ],
          ),
        )
      ],
    ),
  );
}
