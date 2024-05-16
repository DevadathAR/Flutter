import 'package:d_mart_seller/views/widgets/appbar_widget.dart';
import 'package:d_mart_seller/views/widgets/normal_text.dart';
import 'package:intl/intl.dart' as intl;

import '../../const/const.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(orders),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
                15,
                (index) => ListTile(
                      onTap: () {},
                      tileColor: textfieldGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      title: boldText(
                          text: "894651230.", color: purpleColor, size: 14.0),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month_rounded,
                                color: fontGrey,
                              ),
                              10.widthBox,
                              boldText(
                                  text: intl.DateFormat()
                                      .add_yMd()
                                      .format(DateTime.now()),
                                  color: fontGrey,
                                  size: 12.0),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.payment_sharp,
                                color: fontGrey,
                              ),
                              10.widthBox,
                              boldText(text: unpaid, color: red)
                            ],
                          ),
                        ],
                      ),
                      trailing: boldText(text: "₹40.0", color: purpleColor),
                    ).box.margin(const EdgeInsets.only(bottom: 4)).make()),
          ),
        ),
      ),
    );
  }
}
