import 'dart:io';
import 'package:DreaMart/common_widget/bg_widget.dart';
import 'package:DreaMart/common_widget/custom_textfiled.dart';
import 'package:DreaMart/common_widget/out_button.dart';
import 'package:DreaMart/conntrollers/profile_controler.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  final dynamic data;
  const EditProfileScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    // print("test${data["imageurl"]}");
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //if data image and controller path is empty
              data['imageurl'] == '' && controller.profileImagePath.isEmpty
                  ? Image.asset(imgProfile2, width: 80, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make()

                  //if data is not empty but controller path is empty
                  : data['imageurl'] != '' &&
                          controller.profileImagePath.isEmpty
                      ? Image.network(
                          data['imageurl'],
                          width: 100,
                          fit: BoxFit.cover,
                        ).box.roundedFull.clip(Clip.antiAlias).make()

                      //if both are empty
                      : Image.file(
                          File(controller.profileImagePath.value),
                          width: 100,
                          fit: BoxFit.cover,
                        ).box.roundedFull.clip(Clip.antiAlias).make(),
              10.heightBox,
              ourbutton(
                  color: redColor,
                  onPress: () {
                    controller.changeImage(context);
                  },
                  txtcolor: whiteColor,
                  txt: "Change"),
              const Divider(),
              20.heightBox,
              CustomTextField(
                  controller: controller.nameController,
                  hint: namehint,
                  label: name,
                  isDesc: false),
              10.heightBox,
              CustomTextFieldHide(
                  controller: controller.oldPassController,
                  hint: pswd_hint,
                  label: oldpass,
                  isDesc: false),
              10.heightBox,
              CustomTextFieldHide(
                  controller: controller.newPassController,
                  hint: pswd_hint,
                  label: newpass,
                  isDesc: false),
              20.heightBox,
              controller.isloading.value
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(redColor),
                    )
                  : SizedBox(
                      width: context.screenWidth - 60,
                      child: ourbutton(
                          color: redColor,
                          onPress: () async {
                            controller.isloading(true);

                            //if image is not selected
                            if (controller.profileImagePath.value.isNotEmpty) {
                              await controller.uploadProfileImage();
                            } else {
                              controller.profileImageLink = data['imageurl'];
                            }

                            //if old pass matches

                            if (data['password'] ==
                                controller.oldPassController.text) {
                              await controller.changeAuthPassword(
                                  email: data['email'],
                                  password: controller.oldPassController.text,
                                  newpassword:
                                      controller.newPassController.text);

                              await controller.updateProfile(
                                  imgUrl: controller.profileImageLink,
                                  name: controller.nameController.text,
                                  password: controller.newPassController.text);
                              VxToast.show(context, msg: "Updated");
                            } else {
                              VxToast.show(context, msg: "Wrong old password");
                              controller.isloading(false);
                            }
                          },
                          txtcolor: whiteColor,
                          txt: "Save"),
                    ),
            ],
          )
              .box
              .white
              .shadowSm
              .padding(const EdgeInsets.all(16))
              .margin(const EdgeInsets.only(top: 50, left: 12, right: 12))
              .rounded
              .make(),
        ),
      ),
    ));
  }
}
