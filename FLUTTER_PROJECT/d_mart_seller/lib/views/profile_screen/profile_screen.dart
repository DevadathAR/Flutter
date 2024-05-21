import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart_seller/const/const.dart';
import 'package:d_mart_seller/controllers/profile_controler.dart';
import 'package:d_mart_seller/services/store_services.dart';
import 'package:d_mart_seller/views/auth_screen/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: settings, size: 16.0),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => EditProfileScreen(
                    username: controller.snapshotData['vendor_name']));
              },
              icon: const Icon(
                Icons.edit,
                color: white,
              )),
          TextButton(
            onPressed: () async {
              await Get.find<AuthController>().signoutMethood(context);
              Get.offAll(() => LogInScreen());
            },
            child: normalText(text: logout),
          )
        ],
      ),
      body: FutureBuilder(
          future: StoreServices.getProfile(currentUser!.uid),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return loadingIndicator(circleColor: white);
            } else {
              print("test${snapshot.data!.size.toString()}");

              controller.snapshotData = snapshot.data!.docs[0];

              return Column(
                children: [
                  ListTile(
                    leading: controller.snapshotData['imageUrl'] == ''
                        ? Image.asset(
                            imgProduct,
                            width: 100,
                            fit: BoxFit.cover,
                          ).box.roundedFull.clip(Clip.antiAlias).make()
                        : Image.network(controller.snapshotData['imageUrl'],
                                width: 100)
                            .box
                            .roundedFull
                            .clip(Clip.antiAlias)
                            .make(),
                    // leading: Image.asset(imgProduct)
                    //     .box
                    //     .roundedFull
                    //     .clip(Clip.antiAlias)
                    //     .make(),
                    title:
                        // boldText(text: "vendor name"),
                        boldText(
                            text: "${controller.snapshotData['vendor_name']}"),
                    subtitle:
                        normalText(text: "${controller.snapshotData['email']}"),
                    //normalText(text: "vendoremail@email.com"),
                  ),
                  const Divider(),
                  10.heightBox,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: List.generate(
                          profileButtonIcons.length,
                          (index) => ListTile(
                                onTap: () {
                                  switch (index) {
                                    case 0:
                                      Get.to(() => const ShopSetting());
                                      break;
                                    case 1:
                                      Get.to(() => const MessagesScreen());
                                      break;
                                    default:
                                  }
                                },
                                leading: Icon(
                                  profileButtonIcons[index],
                                  color: white,
                                ),
                                title: normalText(
                                    text: profileButtonTitles[index],
                                    color: white),
                              )),
                    ),
                  )
                ],
              );
            }
          }),
// body:
//  Column(
//         children: [
//           ListTile(
//             leading: Image.asset(imgProduct)
//                 .box
//                 .roundedFull
//                 .clip(Clip.antiAlias)
//                 .make(),
//             title: boldText(text: "Vendor name"),
//             subtitle: normalText(text: "vendoremail@email.com"),
//           ),
//           const Divider(),
//           10.heightBox,
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: List.generate(
//                   profileButtonIcons.length,
//                   (index) => ListTile(
//                         onTap: () {
//                           switch (index) {
//                             case 0:
//                               Get.to(() => const ShopSetting());
//                               break;
//                             case 1:
//                               Get.to(() => const MessagesScreen());
//                               break;
//                               default:
//                           }
//                         },
//                         leading: Icon(profileButtonIcons[index],color: white,),
//                         title: normalText(
//                             text: profileButtonTitles[index], color: white),
//                       )),
//             ),
//           )
//         ],
//       ),
    );
  }
}
