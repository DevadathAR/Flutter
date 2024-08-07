import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/const/lists.dart';
import 'package:acron_wallet/view/Category/Category.dart';
import 'package:acron_wallet/view/MyHome/Helpper/BudgetCard.dart';
import 'package:acron_wallet/view/MyHome/Helpper/CategoryList.dart';
import 'package:acron_wallet/view/MyHome/Helpper/PieChart.dart';
import 'package:acron_wallet/view/Profile/Profile.dart';
import 'package:acron_wallet/widgets/BGwidget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double totalamountspent() {
      double totalspent = 0;
      for (int i = 0; i < listamount.length; i++) {
        totalspent += listamount[i];
      }
      return totalspent;
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          const CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.person,
              color: pureblack,
            ),
          ).onTap(() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const Profile();
              },
            ));
          }),
          const SizedBox(
            width: 20,
          )
        ],
        // flexibleSpace: Stack(
        //   children: [
        //     Container(
        //       decoration: const BoxDecoration(
        //         image: DecorationImage(
        //             image: AssetImage("Assets/image/Appbar.png"),
        //             fit: BoxFit.cover),
        //       ),
        //     ),
        //   ],
        // )
      ),
      body: Stack(
        children: [BGwidget(context),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BudgetCard(context,
                          label: "Monthly Budget",
                          currency: "\$",
                          amount: "25000.0",
                          iteamColor: red),
                      BudgetCard(context,
                          label: "Outstanding Budget",
                          currency: "\$",
                          amount: (25000 - totalamountspent()).toString(),
                          iteamColor: blue),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: size.width * 0.85,
                    width: size.width * 0.85,
                    child: const PieChartWidget(),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.08,
                    ),
                    child: SizedBox(
                      height: size.height * 0.4,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: listcategory.length,
                        itemBuilder: (context, index) {
                          return CategoryList(
                            context,
                            label: listcategory[index],
                            iteamColor: listcolor[index],
                          ).onTap(() {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const CategoryPage();
                              },
                            ));
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
