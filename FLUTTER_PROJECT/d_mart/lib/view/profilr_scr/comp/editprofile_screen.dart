// import 'dart:io';

// import 'package:get/get.dart';
// import '../../../common_widget/bg_widget.dart';
// import '../../../conntrollers/profile_controler.dart';
// import '../../../consts/consts.dart';
// import 'package:d_mart/common_widget/custom_textfiled.dart';
// import 'package:d_mart/common_widget/out_button.dart';

// class EditProfileScreen extends StatelessWidget {
//    const EditProfileScreen({super.key});



//   @override
//   Widget build(BuildContext context) {

//     var controller = Get.find<ProfileController>();
    
//     return bgWidget(
//         child: Scaffold(
//       appBar: AppBar(),
//       body: Obx(()=> Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             controller.profileImgPath.isEmpty
//                 ? Image.asset(imgProfile2, width: 130, fit: BoxFit.cover)
//                     .box
//                     .roundedFull
//                     .clip(Clip.antiAlias)
//                     .make()
//                 : Image.file(File(controller.profileImgPath.value)),
//             10.heightBox,
//             ourbutton(
//                 color: redColor,
//                 onPress: () {
//                   controller.changeImage(context);
//                 },
//                 txtcolor: whiteColor,
//                 txt: "Change"),
//             const Divider(),
//             20.heightBox,
//             CustomTestFiled(hint: namehint, title: name, isPass: false),
//             CustomTestFiled(hint: pswd_hint, title: pswd, isPass: true),
//             SizedBox(
//               width: context.screenWidth - 40,
//               child: ourbutton(
//                   color: green,
//                   onPress: () {},
//                   txtcolor: whiteColor,
//                   txt: "Save"),
//             ),
//           ],
//         )
//             .box
//             .padding(const EdgeInsets.all(16))
//             .white
//             .rounded
//             .margin(const EdgeInsets.only(top: 50, left: 12, right: 12))
//             .make(),
//       ),
//     ));
//   }
// }








import 'dart:io';
import 'package:d_mart/common_widget/bg_widget.dart';
import 'package:d_mart/common_widget/custom_textfiled.dart';
import 'package:d_mart/common_widget/out_button.dart';
import 'package:d_mart/conntrollers/profile_controler.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  final dynamic data;
  const EditProfileScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
print("test${data["imageurl"]}");
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
                  : data['imageurl'] != '' && controller.profileImagePath.isEmpty
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
              CustomTestFiled(
                  controller: controller.nameController,
                  hint: namehint,
                  title: name,
                  isPass: false),
              10.heightBox,
              CustomTestFiled(
                  controller: controller.oldPassController,
                  hint: pswd_hint,
                  title: oldpass,
                  isPass: true),
              10.heightBox,
              CustomTestFiled(
                  controller: controller.newPassController,
                  hint: pswd_hint,
                  title: newpass,
                  isPass: true),
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
                                  newpassword: controller.newPassController.text);
          
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