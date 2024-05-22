import 'package:DreaMart/consts/consts.dart';
import 'package:DreaMart/view/order_scrn/comp/order_place_details.dart';
import 'package:DreaMart/view/order_scrn/comp/order_status.dart';
import 'package:intl/intl.dart' as intl;

class OrderDetails extends StatelessWidget {
  final dynamic data;
  const OrderDetails({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "Order Details"
            .text
            .fontFamily(semibold)
            .color(darkFontGrey)
            .makeCentered(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // OrderStatus(),
              OrderStatus(
                  icon: Icons.done,
                  color: redColor,
                  title: "Order Placed",
                  showDone: data[0]['order_placed']),
              OrderStatus(
                  icon: Icons.thumb_up,
                  color: Vx.blue100,
                  title: "Order Confirmed",
                  showDone: data[0]['order_confirmed']),
              OrderStatus(
                  icon: Icons.car_crash_sharp,
                  color: yellow,
                  title: "Order Delivery",
                  showDone: data[0]['order_on_delivery']),
              OrderStatus(
                  icon: Icons.done_all_outlined,
                  color: green,
                  title: "Order Delivered",
                  showDone: data[0]['order_delivered']),

              const Divider(),
              10.heightBox,
              Column(
                children: [
                  orderPlaceDetails(
                      d1: data[0]['order_code'],
                      d2: data[0]['shipping_method'],
                      title1: "Order code",
                      title2: "Shipping Method"),
                  orderPlaceDetails(
                      d1: intl.DateFormat()
                          .add_yMd()
                          .format((data[0]['order_date'].toDate())),
                      d2: data[0]['payment_method'],
                      title1: "Order date",
                      title2: "Payment Method"),
                  orderPlaceDetails(
                      d1: "Unpaid",
                      d2: "Order placed",
                      title1: "Payment Status",
                      title2: "Delivery Status"),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            "Shipping Address"
                                .text
                                .size(18)
                                .fontFamily(bold)
                                .fontWeight(FontWeight.w700)
                                .make(),
                            "${data[0]['order_by_name']}".text.make(),
                            "${data[0]['order_email']}".text.make(),
                            "${data[0]['order_by_address']}".text.make(),
                            "${data[0]['order_by_city']}".text.make(),
                            "${data[0]['order_by_state']}".text.make(),
                            "${data[0]['order_by_phone']}".text.make(),
                            "${data[0]['order_by_postalcode']}".text.make(),
                          ],
                        ),
                        SizedBox(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              "Total Amount"
                                  .text
                                  .size(18)
                                  .fontFamily(bold)
                                  .fontWeight(FontWeight.w700)
                                  .make(),
                              "${data[0]['total_amount']}"
                                  .text
                                  .color(redColor)
                                  .fontFamily(bold)
                                  .fontWeight(FontWeight.w600)
                                  .makeCentered(),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ).box.outerShadowMd.white.make(),
              const Divider(),
              10.heightBox,
              "Ordered Product"
                  .text
                  .size(16)
                  .color(darkFontGrey)
                  .fontFamily(semibold)
                  .make(),
              10.heightBox,
              ListView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      children:
                          List.generate(data[0]['orders'].length, (index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            orderPlaceDetails(
                                title1: data[0]['orders'][index]['title'],
                                title2: data[0]['orders'][index]['tprice'],
                                d1: "${data[0]['orders'][index]['qty']}x",
                                d2: "Refundable"),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                width: 30,
                                height: 10,
                                color: Color(data[0]['orders'][index]['color']),
                              ),
                            ),
                            const Divider(),
                          ],
                        );
                      }).toList())
                  .box
                  .outerShadowMd
                  .white
                  .margin(const EdgeInsets.only(bottom: 4))
                  .make(),
              20.heightBox,
              Row(children: [
                "SUB TOTAL".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
                "SUB TOTAL".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
