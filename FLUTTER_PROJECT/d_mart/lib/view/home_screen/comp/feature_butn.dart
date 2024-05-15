import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/view/catogery_scr/category_details.dart';
import 'package:get/get.dart';

Widget featureButton({String? title, icon}) {
  return Row(children: [
    Image.asset(
      icon,
      width: 60,
      fit: BoxFit.fill,
    ),
    10.widthBox,
    title!.text.fontFamily(semibold).color(darkFontGrey).make()
  ])
      .box
      .width(200)
      .white
      .padding(const EdgeInsets.all(14))
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .roundedSM
      .outerShadowSm
      .make()
      .onTap(() {
    Get.to(() => CategoryDetails(
          title: title,
        ));
  });
}
