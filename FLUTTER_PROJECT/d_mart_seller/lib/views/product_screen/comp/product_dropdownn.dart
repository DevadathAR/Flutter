import 'package:d_mart_seller/const/const.dart';

Widget productDropdown() {
  return DropdownButtonHideUnderline(
    child: DropdownButton<String>(
      hint: normalText(text: "Choose category",color: fontGrey),
        value: null, isExpanded: true, items: [], onChanged: (value) {}),
  )
      .box
      .white
      .roundedSM
      .padding(const EdgeInsets.symmetric(horizontal: 4))
      .make();
}
