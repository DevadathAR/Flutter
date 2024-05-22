import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:DreaMart/common_widget/loading_indicator.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:DreaMart/services/firestore_services.dart';
import 'package:DreaMart/view/order_scrn/order_details.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "My Orders".text.fontFamily(semibold).make(),
      ),
      body: StreamBuilder(
          stream: FirestoreServices.getAllOrders(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: loadingIndicator(),
              );
            } else if (snapshot.data!.docs.isEmpty) {
              return "No orders yet!"
                  .text
                  .fontFamily(semibold)
                  .color(darkFontGrey)
                  .makeCentered();
            } else {
              var data = snapshot.data!.docs;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: "${index + 1}"
                        .text
                        .fontFamily(bold)
                        .color(darkFontGrey)
                        .xl2
                        .make(),
                    title: data[index]['order_code']
                        .toString()
                        .text
                        .color(redColor)
                        .fontFamily(semibold)
                        .make(),
                    subtitle: data[index]['total_amount']
                        .toString()
                        .numCurrency
                        .text
                        .color(darkFontGrey)
                        .fontFamily(bold)
                        .make(),
                    trailing: IconButton(
                        onPressed: () {
                          Get.to(() => OrderDetails(data: [data[index]]));
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: darkFontGrey,
                        )),
                  );
                },
              );
            }
          }),
    );
  }
}
