
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart/common_widget/loading_indicator.dart';
import 'package:d_mart/common_widget/out_button.dart';
import 'package:d_mart/conntrollers/cart_controller.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/services/firestore_services.dart';
import 'package:d_mart/view/cart_scr/shippiing_scrn.dart';
import 'package:get/get.dart';

class CartScrn extends StatelessWidget {
  const CartScrn({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CartController());
    return Scaffold(
        backgroundColor: whiteColor,
        bottomNavigationBar: SizedBox(
          height: 60,
          child: ourbutton(
                                color: redColor,
                                onPress: () {Get.to(()=>ShippingDetails());},
                                txtcolor: whiteColor,
                                txt: "Proceed to shippping"),
        ),

        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: "Shopiing cart"
              .text
              .color(darkFontGrey)
              .fontFamily(semibold)
              .make(),
        ),
        body: StreamBuilder(
            stream: FirestoreServices.getCart(currentUser!.uid),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: loadingIndicator(),
                );
              } else if (snapshot.data!.docs.isEmpty) {
                return Center(
                  child: 'Cart is empty'.text.color(darkFontGrey).make(),
                );
              } else {
                var data = snapshot.data!.docs;
                controller.calculate(data);
                controller.productSnapshot = data;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                leading: Image.network('${data[index]['img']}',width: 120,fit: BoxFit.cover,),
                                title: '${data[index]['title']}  (x ${data[index]['qty']})'
                                    .text
                                    .fontFamily(semibold)
                                    .size(16)
                                    .make(),
                                subtitle: '${data[index]['tprice']}'
                                    .numCurrency
                                    .text
                                    .color(redColor)
                                    .fontFamily(semibold)
                                    .size(14)
                                    .make(),
                                trailing: const Icon(
                                  Icons.delete,
                                  color: redColor,
                                ).onTap(() {FirestoreServices.deleteDocument(data[index].id);}),
                              );
                            },
                            itemCount: data.length,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "Total price"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          Obx(()=> "${controller.totalP.value}".numCurrency.text.fontFamily(semibold).color(redColor).make())
                        ],
                      )
                          .box
                          .padding(const EdgeInsets.all(12))
                          .color(lightgolden)
                          .roundedSM
                          .make(),
                      10.heightBox,
                      // SizedBox(
                      //     width: context.screenWidth - 60,
                      //     child: ourbutton(
                      //         color: redColor,
                      //         onPress: () {},
                      //         txtcolor: whiteColor,
                      //         txt: "Proceed to shippping"))
                    ],
                  ),
                );
              }
            }));
  }
}
