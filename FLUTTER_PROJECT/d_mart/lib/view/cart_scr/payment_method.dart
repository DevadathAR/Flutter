import 'package:d_mart/common_widget/out_button.dart';
import 'package:d_mart/conntrollers/cart_controller.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/consts/list.dart';
import 'package:get/get.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<CartController>();
    return Scaffold(
        backgroundColor: whiteColor,
        bottomNavigationBar: SizedBox(
          height: 60,
          child: ourbutton(
              onPress: () {
                controller.placeMyOrder(orderPaymentMethod:paymentMethords[controller.paymentIndex.value],totalAmount: controller.totalP.value );
              },
              color: redColor,
              txtcolor: whiteColor,
              txt: "Place my order"),
        ),
        appBar: AppBar(
          title: "Choose payment method"
              .text
              .fontFamily(semibold)
              .color(darkFontGrey)
              .make(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Obx(()=> Column(
              children: List.generate(
                paymentMethodImg.length,
                (index) {
                  return GestureDetector(onTap: (){
                    controller.changePaymentIndex(index);
                  },
                    child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:controller.paymentIndex.value==index? redColor:Colors.transparent,
                                width: 4,),
                            borderRadius: BorderRadius.circular(12)),
                        margin: const EdgeInsets.only(bottom: 8),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Image.asset(
                              paymentMethodImg[index],
                              width: double.infinity,
                              height: 120,
                              fit: BoxFit.cover,
                              colorBlendMode:controller.paymentIndex.value == index? BlendMode.darken:BlendMode.color,
                              color:controller.paymentIndex.value == index?  black.withOpacity(0.4):Colors.transparent,
                            ),controller.paymentIndex.value == index?
                            Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                  activeColor: green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  value: true,
                                  onChanged: (value) {}),
                            ):Container(),

                            Positioned(
                              bottom: 10,right: 10,
                              child: "${paymentMethords[index]}".text.fontFamily(semibold).white.size(16).make())
                          ],
                        )),
                  );
                },
              ),
            ),
          ),
        ));
  }
}