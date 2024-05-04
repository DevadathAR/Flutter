import 'package:d_mart/conntrollers/home_contrlrs.dart';
import 'package:d_mart/consts/colors.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/consts/images.dart';
import 'package:d_mart/consts/strings.dart';
import 'package:d_mart/consts/styles.dart';
import 'package:d_mart/view/cart_scr/cart_scrn.dart';
import 'package:d_mart/view/category_scr/categeri_scrn.dart';
import 'package:d_mart/view/home_screen/home_scr.dart';
import 'package:d_mart/view/profilr_scr/profile_scrn.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
      const CartScrn(),
      const CategoryScrn(),
      const ProfileScrn()
    ];
    return Scaffold(
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
    );
  }
}
