import 'package:book_king/cntrlr/home_controller.dart';
import 'package:book_king/const/colors.dart';
import 'package:book_king/const/string.dart';
import 'package:book_king/view/home/book_3dot.dart';
import 'package:book_king/view/home/book_filter.dart';
import 'package:book_king/view/home/book_help.dart';
import 'package:book_king/view/home_scrn/home_scrn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookHome extends StatefulWidget {
  const BookHome({super.key});
  @override
  State<BookHome> createState() => _BookHomeState();
}

class _BookHomeState extends State<BookHome> {
  var controller = Get.put(HomeCntrlr());
  var btmnavbar = const [
    BottomNavigationBarItem(
        icon: Icon(Icons.home_filled), label: "Home", backgroundColor: lowgray),
    BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
    BottomNavigationBarItem(
        icon: Icon(Icons.card_travel_outlined), label: "Cart"),
    BottomNavigationBarItem(icon: Icon(Icons.badge), label: "Badge"),
  ];
  var navBody = [
    HomeScreen(),
    Container(
      color: green,
    ),
    Container(
      color: deepblue,
    ),
    Container(
      color: purple,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const BookHelp(),
            ));
          },
          child: const Text("Help")),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            backgroundColor: lowgray,
            currentIndex: controller.currentNavIndex.value,
            onTap: (value) => controller.currentNavIndex.value = value,
            selectedItemColor: orenge,
            items: btmnavbar),
      ),
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: const Text(
          appname,
          style: TextStyle(
              color: orenge, fontWeight: FontWeight.w900, fontSize: 30),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BookFilter(),
                ));
              },
              child: const Icon(Icons.filter_alt_rounded)),
        ),
        actions:  [
          Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Row(
                children: [TextButton(onPressed: (){}, child: const Icon(Icons.search),),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookThreeDot(),));}, child: const Icon(Icons.list),),
                ],
              )
              
              )
        ],
      ),
      body: Obx(() =>
          Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
    );
  }
}
