import 'package:DreaMart/common_widget/exit_dialog.dart';
import 'package:DreaMart/conntrollers/home_contrlrs.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:DreaMart/view/catogery_scr/category_scrn.dart';
import 'package:DreaMart/view/cart_scr/cart_scrn.dart';
import 'package:DreaMart/view/home_screen/home_scr.dart';
import 'package:DreaMart/view/profilr_scr/profile_scrn.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controlller = Get.put(HomeCntrlr());
    var navbaritem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navbody = [
      HomeScrn(),
      const CategoryScrn(),
      const CartScrn(),
      const ProfileScrn()
    ];
    return WillPopScope(onWillPop: ()async{
      showDialog(
        barrierDismissible: false,
        context: context, builder: (context) => exitDialog(context),);
      return false;
    },
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controlller.currentNavIndex.value,
            selectedItemColor: redColor,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            items: navbaritem,
            backgroundColor: whiteColor,
            onTap: (value) {
              controlller.currentNavIndex.value = value;
            },
          ),
        ),
        body: Obx(() => Expanded(
              child: navbody.elementAt(controlller.currentNavIndex.value),
            )),
      ),
    );
  }
}
