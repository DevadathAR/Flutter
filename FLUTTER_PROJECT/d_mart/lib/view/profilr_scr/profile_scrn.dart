import 'package:DreaMart/view/splsh_scr/splash_scrn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:DreaMart/common_widget/bg_widget.dart';
import 'package:DreaMart/common_widget/loading_indicator.dart';
import 'package:DreaMart/conntrollers/auth_contrlr.dart';
import 'package:DreaMart/conntrollers/profile_controler.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:DreaMart/consts/list.dart';
import 'package:DreaMart/services/firestore_services.dart';
import 'package:DreaMart/view/chat_scrn/messaging_scrn.dart';
import 'package:DreaMart/view/order_scrn/order_scrn.dart';
import 'package:DreaMart/view/profilr_scr/comp/details_card.dart';
import 'package:DreaMart/view/profilr_scr/comp/editprofile_screen.dart';
import 'package:DreaMart/view/wishList_scrn/wishList_scrn.dart';
import 'package:get/get.dart';

class ProfileScrn extends StatelessWidget {
  const ProfileScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());

    return bgWidget(
        child: Scaffold(
            body: StreamBuilder(
                stream: FirestoreServices.getUser(currentUser!.uid),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(redColor),
                      ),
                    );
                  } else {
                    var datas = snapshot.data!.docs[0];
                    // ignore: avoid_print
                    print("Testttt${datas['name']}");

                    return SafeArea(
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
                                  controller.nameController.text = datas['name'];
                              Get.to(() => EditProfileScreen(
                                    data: datas,
                                  ));
                            }),
                          ),

                          //userdetaiils

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Image.asset(imgProfile2,
                                        width: 130, fit: BoxFit.cover)
                                    .box
                                    .roundedFull
                                    .clip(Clip.antiAlias)
                                    .make(),
                                10.heightBox,
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   datas['name'].toString()
                                        .text
                                        .fontFamily(semibold)
                                        .white
                                        .make(),
                                    5.heightBox,
                                   datas['email'].toString().text.white.make()
                                  ],
                                )),
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                            color: whiteColor)),
                                    onPressed: () async {
                                      await Get.put(AuthController()
                                          .signoutMethood(context));
                                      Get.offAll(() => const SplashScreen());
                                    },
                                    child: logout.text
                                        .fontFamily(semibold)
                                        .white
                                        .make())
                              ],
                            ),
                          ),
                          20.heightBox,

                          FutureBuilder(
                              future: FirestoreServices.getCounts(),
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                if (!snapshot.hasData) {
                                  return Center(child: loadingIndicator());
                                } else {
                                  var countData = snapshot.data;
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      detalsCard(
                                          count: countData[0].toString(),
                                          title: "In your Crat",
                                          width: context.screenWidth / 3.5),
                                      detalsCard(
                                          count: countData[1].toString(),
                                          title: "in your Wish list",
                                          width: context.screenWidth / 3.5),
                                      detalsCard(
                                          count: countData[2].toString(),
                                          title: "Your orders",
                                          width: context.screenWidth / 3.5),
                                    ],
                                  );
                                }
                              }),

                          //button section

                          ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return const Divider(
                                color: lightGrey,
                              );
                            },
                            itemCount: profilebuttonlist.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                onTap: () {
                                  switch (index) {
                                    case 0:
                                      Get.to(() => const OrdersScreen());
                                      break;
                                    case 1:
                                      Get.to(() => const WishListScreen());
                                      break;
                                    case 2:
                                      Get.to(() => const MessagesScreen());
                                      break;
                                  }
                                },
                                leading: Image.asset(
                                  profilebuttonIcon[index],
                                  scale: 2,
                                ),
                                title: "${profilebuttonlist[index]}"
                                    .text
                                    .fontFamily(bold)
                                    .color(darkFontGrey)
                                    .make(),
                              );
                            },
                          )
                              .box
                              .white
                              .rounded
                              .shadowSm
                              .margin(const EdgeInsets.all(12))
                              .padding(
                                  const EdgeInsets.symmetric(horizontal: 16))
                              .make()
                              .box
                              .color(redColor)
                              .make()
                        ],
                      ),
                    ));
                  }
                })));
  }
}
