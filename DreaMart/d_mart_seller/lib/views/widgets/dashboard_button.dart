import 'package:d_mart_seller/const/const.dart';

Widget dashbordButton (context,{title,count,icon}){

  var size = MediaQuery.of(context).size;
  return Row(
              children: [
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldText(text: title, size: 16.0),
                    boldText(text: count,size: 20.0)
                  ],
                )),
                Image.asset(
                  icon,
                  width: 40,
                  color: white,
                )
              ],
            )
                .box
                .color(purpleColor)
                .rounded
                .size(size.width * 0.4, 80)
                .padding(const EdgeInsets.all(8))
                .make();
}