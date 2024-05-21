import 'package:d_mart/conntrollers/auth_contrlr.dart';
import 'package:d_mart/view/auth_scrn/sign_up.dart';
import 'package:d_mart/common_widget/applog_wid.dart';
import 'package:d_mart/common_widget/bg_widget.dart';
import 'package:d_mart/common_widget/custom_textfiled.dart';
import 'package:d_mart/common_widget/out_button.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/consts/list.dart';
import 'package:d_mart/view/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LogInScrn extends StatelessWidget {
  const LogInScrn({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return bgWidget(
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Obx(
              () => Column(
                children: [
                  CustomTextField(
                      label: email,
                      hint: email_hint,
                      isDesc: false,
                      controller: controller.emailController),
                      10.heightBox,
                  CustomTextFieldHide(
                      label: pswd,
                      hint: pswd_hint,
                      isDesc: false,
                      controller: controller.pswdController),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {}, child: forget_pswd.text.make())),
                  5.heightBox,
                  controller.isloading.value
                      ? const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(redColor),
                        )
                      : ourbutton(
                              onPress: () async {
                                controller.isloading(true);
                                await controller
                                    .loginMethod(context: context)
                                    .then((value) {
                                  if (value != null) {
                                    VxToast.show(context, msg: loggedin);
                                    Get.offAll(() => const Home());
                                  }
                                  else{
                                    controller.isloading(false);
                                  }
                                });
                              },
                              color: redColor,
                              txtcolor: whiteColor,
                              txt: login)
                          .box
                          .width(context.screenWidth - 50)
                          .make(),
                  10.heightBox,
                  createnewacc.text.color(fontGrey).make(),
                  10.heightBox,
                  ourbutton(
                          onPress: () {
                            Get.to(() => SignUp());
                          },
                          color: lightgolden,
                          txtcolor: redColor,
                          txt: sig_up)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  loginwith.text.color(fontGrey).make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => CircleAvatar(
                              radius: 25,
                              backgroundColor: lightGrey,
                              child: Image.asset(
                                socialmedia[index],
                                width: 30,
                              ),
                            )),
                  )
                ],
              )
                  .box
                  .gray100
                  .shadow
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth * .7)
                  .rounded
                  .make(),
            )
          ],
        )),
      ),
    );
  }
}
