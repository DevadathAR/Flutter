import 'package:d_mart_seller/const/const.dart';

Widget normalText({text,color = Colors.white,size = 14.0}){
  return "${text}".text.color(color).size(size).make();
}

Widget boldText({text,color = Colors.white,size = 14.0}){
  return "${text}".text.color(color).semiBold.size(size).make();
}