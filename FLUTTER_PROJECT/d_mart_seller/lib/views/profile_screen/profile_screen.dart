import 'package:d_mart_seller/views/profile_screen/edit_profile_screen.dart';
import 'package:d_mart_seller/views/widgets/normal_text.dart';
import 'package:get/get.dart';

import '../../const/const.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: settings, size: 16.0),
        actions: [
          IconButton(onPressed: () {Get.to(()=>EditProfileScreen());}, icon: const Icon(Icons.edit,color: white,)),
          TextButton(
            onPressed: () {},
            child: normalText(text: logout),
          )
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(imgProduct)
                .box
                .roundedFull
                .clip(Clip.antiAlias)
                .make(),
            title: boldText(text: "Vendor name"),
            subtitle: normalText(text: "vendoremail@email.com"),
          ),
          Divider(),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(
                  profileButtonIcons.length,
                  (index) => ListTile(
                        leading: Icon(profileButtonIcons[index]),
                        title: normalText(text: profileButtonTitles[index],color: white),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
