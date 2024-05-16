import 'package:d_mart_seller/const/const.dart';
import 'package:d_mart_seller/views/widgets/normal_text.dart';
import 'package:intl/intl.dart' as intl;


AppBar appBarWidget(title){
  return AppBar(
    backgroundColor: white,
        automaticallyImplyLeading: false,
        title: boldText(text: title, color: fontGrey, size: 16.0),
        actions: [
          Center(
              child: normalText(
                  text:
                      intl.DateFormat('EEE,MMM,d,' 'yy').format(DateTime.now()),
                  color: purpleColor)),
          25.widthBox,
        ],
      );
}