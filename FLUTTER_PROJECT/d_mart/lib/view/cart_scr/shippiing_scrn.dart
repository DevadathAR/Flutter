import 'package:d_mart/common_widget/custom_textfiled.dart';
import 'package:d_mart/common_widget/out_button.dart';
import 'package:d_mart/conntrollers/cart_controller.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/view/cart_scr/payment_method.dart';
import 'package:get/get.dart';

class ShippingDetails extends StatelessWidget {
  const ShippingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<CartController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: "Shipping info"
            .text
            .fontFamily(semibold)
            .color(darkFontGrey)
            .make(),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: ourbutton(
            onPress: () {
              if (controller.addressConntroller.text.length > 10
               &&
                  controller.phoneConntroller.text.length > 5 &&
                  controller.postalCodeConntroller.text.length > 2 &&
                  controller.cityConntroller.text.length > 1
                  ) {
                Get.to(() => PaymentMethods());
              }else
              {
                VxToast.show(context, msg: "Please complete this form");
              }
            },
            color: redColor,
            txtcolor: whiteColor,
            txt: "Continue"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomTextField(
                hint: "Address",
                isDesc: true,
                label: "Address",
                controller: controller.addressConntroller),5.heightBox,
            CustomTextField(
                hint: "Ciity",
                isDesc: false,
                label: "City",
                controller: controller.cityConntroller),5.heightBox,
            CustomTextField(
                hint: "State",
                isDesc: false,
                label: "State",
                controller: controller.stateConntroller),5.heightBox,
            CustomTextField(
                hint: "Poostal Code",
                isDesc: false,
                label: "Postal Code",
                controller: controller.postalCodeConntroller),5.heightBox,
            CustomTextField(
                hint: "Phone",
                isDesc: false,
                label: "Phone Number",
                controller: controller.phoneConntroller),
          ],
        ),
      ),
    );
  }
}
