import 'package:d_mart_seller/const/const.dart';

Widget customTextFiled({label,hint,controller,isDesc = false}) {
  return TextFormField(
    style: TextStyle(color: white),
    controller: controller,
    maxLines:  isDesc? 4:1,
    decoration: InputDecoration(
      isDense: true,

      label: normalText(text: label),
      // enabledBorder: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(15),
      //       borderSide: const BorderSide(color: white)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: white)),
        hintText: hint,
        hintStyle:  TextStyle(color: lightGrey.withOpacity(.33),)),
       
  );
}
