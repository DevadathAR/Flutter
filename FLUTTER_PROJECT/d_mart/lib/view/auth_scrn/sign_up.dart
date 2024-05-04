import 'package:d_mart/common_widget/applog_wid.dart';
import 'package:d_mart/common_widget/bg_widget.dart';
import 'package:d_mart/common_widget/custom_textfiled.dart';
import 'package:d_mart/common_widget/out_button.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/consts/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? ischeck = false;
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
            "Sign up to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                CustomTestFiled(
                  title: name,
                  hint: namehint,
                ),
                5.heightBox,
                CustomTestFiled(
                  title: email,
                  hint: email_hint,
                ),
                5.heightBox,
                CustomTestFiled(title: pswd, hint: pswd_hint),
                5.heightBox,
                CustomTestFiled(title: repswd, hint: pswd_hint),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                        activeColor: redColor,
                        value: ischeck,
                        onChanged: (newvalue) {
                          setState(() {
                            ischeck = newvalue;
                          });
                        }),
                  ],
                ),
                ourbutton(
                        onPress: () {},
                        color: ischeck == true ? redColor : lightGrey,
                        txtcolor: whiteColor,
                        txt: sig_up)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                Row(
                  children: [
                    alrdyacc.text.color(fontGrey).make(),
                    login.text
                        .color(redColor)
                        .fontWeight(FontWeight.bold)
                        .make()
                        .onTap(() {Get.back();
                    })
                  ],
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
