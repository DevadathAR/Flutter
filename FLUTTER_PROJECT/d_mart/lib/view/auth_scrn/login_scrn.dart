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

class LogInScrn extends StatelessWidget {
  const LogInScrn({super.key});

  @override
  Widget build(BuildContext context) {
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
            Column(
              children: [
                CustomTestFiled(
                  title: email,
                  hint: email_hint,
                ),
                CustomTestFiled(title: pswd, hint: pswd_hint),
                Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {}, child: forget_pswd.text.make())),
                5.heightBox,
                ourbutton(
                        onPress: () {Get.to(()=>const Home());},
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
                          Get.to(()=> SignUp());
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) {
                          //     return SignUp();
                          //   },
                          // ));
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
                .make()
          ],
        )),
      ),
    );
  }
}
