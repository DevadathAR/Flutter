import 'package:d_mart_seller/const/const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navScreens = [
      HomeScreen(),
      ProductScreen(),
      OrderScreen(),
      ProfileScreen()
    ];

    var bottomNavBar = [
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), label: dashbord),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProducts,
            color: darkGrey,
            width: 24,
          ),
          label: products),
      BottomNavigationBarItem(
          icon: Image.asset(
            icOrders,
            color: darkGrey,
            width: 24,
          ),
          label: orders),
      BottomNavigationBarItem(
          icon: Image.asset(
            icGeranalsettings,
            color: darkGrey,
            width: 24,
          ),
          label: settings),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(()=> BottomNavigationBar(
          onTap: (index){controller.navIndex.value = index;
          },
          currentIndex: controller.navIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: purpleColor,
            unselectedItemColor: darkGrey,
            items: bottomNavBar),
      ),
          

      body: Container(
        child: Obx(()=>Column(
            children: [
              Expanded(child: navScreens.elementAt(controller.navIndex.value))
            ],
          ),
        ),
      ),
    );
  }
}
