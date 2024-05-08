import 'package:d_mart/common_widget/bg_widget.dart';
import 'package:d_mart/conntrollers/auth_contrlr.dart';
import 'package:d_mart/conntrollers/profile_controler.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/consts/list.dart';
import 'package:d_mart/view/auth_scrn/login_scrn.dart';
import 'package:d_mart/view/profilr_scr/comp/details_card.dart';
import 'package:d_mart/view/profilr_scr/comp/editprofile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScrn extends StatelessWidget {
  const ProfileScrn({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {

      var controller = Get.put(ProfileController());

    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [

            //edit profile button
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  )).onTap(() {
                    Get.to(()=> const EditProfileScreen());
                  }),
            ),

            //userdetaiils

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Image.asset(imgProfile2, width: 130, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.heightBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Dummy User".text.fontFamily(semibold).white.make(),
                      5.heightBox,
                      "Customer@example.com".text.white.make()
                    ],
                  )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: whiteColor)),
                      onPressed: () async{
                        await Get.put(AuthController().signoutMethood(context));
                        Get.offAll(()=>const LogInScrn());
                      },
                      child: logout.text.fontFamily(semibold).white.make())
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detalsCard(
                    count: "00",
                    title: "in your Crat",
                    width: context.screenWidth / 3.5),
                detalsCard(
                    count: "22",
                    title: "in your Wish list",
                    width: context.screenWidth / 3.5),
                detalsCard(
                    count: "652",
                    title: "Your orders",
                    width: context.screenWidth / 3.5),
              ],
            ),
            // 20.heightBox,

            //button section

            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider(color: lightGrey,);
              },
              itemCount: profilebuttonlist.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(profilebuttonIcon[index],scale: 2,),
                  title: "${profilebuttonlist[index]}".text.fontFamily(bold).color(darkFontGrey).make(),
                );
              },
            ).box.white.rounded.shadowSm.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).make().box.color(redColor).make()
          ],
        ),
      )),
    ));
  }
}




/*
import 'package:d_mart/common_widget/bg_widget.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/view/profilr_scr/comp/details_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScrn extends StatelessWidget {
  const ProfileScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            // editprof button

            Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                )),
            Row(
              children: [
                Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.heightBox,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "dummy".text.fontFamily(semibold).white.make(),
                      5.heightBox,
                      '@hhuuusd.com'.text.white.make(),
                    ],
                  ),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: whiteColor)),
                    onPressed: () {},
                    child: logout.text.fontFamily(semibold).white.make())
              ],
            ),
            20.heightBox,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detalsCard(
                    count: "00",
                    title: "in your Crat",
                    width: context.screenWidth / 3.5),
                detalsCard(
                    count: "22",
                    title: "in your Wish list",
                    width: context.screenWidth / 3.5),
                detalsCard(
                    count: "652",
                    title: "Your orders",
                    width: context.screenWidth / 3.5),
              ],
            ),
          ],
        ),
      )),
    ));
  }
}
*/