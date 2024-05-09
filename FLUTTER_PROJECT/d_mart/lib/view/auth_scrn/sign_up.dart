import 'package:d_mart/common_widget/applog_wid.dart';
import 'package:d_mart/common_widget/bg_widget.dart';
import 'package:d_mart/common_widget/custom_textfiled.dart';
import 'package:d_mart/common_widget/out_button.dart';
import 'package:d_mart/conntrollers/auth_contrlr.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/consts/strings.dart';
import 'package:d_mart/view/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? ischeck = false;
  var controller = Get.put(AuthController());

  ///text cntrlrs
  ///
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var pswdController = TextEditingController();
  var pswdretypController = TextEditingController();
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
            Obx(()=> Column(
                children: [
                  CustomTestFiled(
                      title: name,
                      hint: namehint,
                      controller: nameController,
                      isPass: false),
                  5.heightBox,
                  CustomTestFiled(
                      title: email,
                      hint: email_hint,
                      controller: emailController,
                      isPass: false),
                  5.heightBox,
                  CustomTestFiled(
                      title: pswd,
                      hint: pswd_hint,
                      controller: pswdController,
                      isPass: true),
                  5.heightBox,
                  CustomTestFiled(
                      title: repswd,
                      hint: pswd_hint,
                      controller: pswdretypController,
                      isPass: true),
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
                  controller.isloading.value? const CircularProgressIndicator(valueColor: const AlwaysStoppedAnimation(redColor),) :ourbutton(
                          onPress: () async {
                            controller.isloading(true);
                            if (ischeck != false) {
                              try {
                                await controller
                                    .signupMethod(
                                  context: context,
                                  email: emailController.text,
                                  pswd: pswdController.text,
                                )
                                    .then((value) {
                                  return controller.storeUserdata(
                                      email: emailController.text,
                                      pswd: pswdController.text,
                                      name: nameController.text);
                                }).then((value) {
                                  VxToast.show(context, msg: loggedin);
                                  Get.offAll(() => const Home());
                                });
                              } catch (e) {
                                auth.signOut();
                                VxToast.show(context, msg: e.toString());
                                controller.isloading(false);
                              }
                            }
                          },
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
                          .onTap(() {
                        Get.back();
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
                  .make(),
            )
          ],
        )),
      ),
    );
  }
}
