import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/view/DummyTest/dummy.dart';
import 'package:acron_wallet/view/MyHome/Helpper/BudgetCard.dart';
import 'package:acron_wallet/view/MyHome/Helpper/CategoryList.dart';
import 'package:acron_wallet/view/MyHome/Helpper/PieChart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // const List<String> listcategory= [];
    return Scaffold(
        appBar: AppBar(
            actions: const [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.person,
                  color: white,
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
            flexibleSpace: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Assets/image/Appbar.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            )),
        body: Stack(
          children: [
             const SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image(
                  image: AssetImage("assets/image/redBG.png"),
                  fit: BoxFit.cover,
                )),
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
                            amount: "25000",
                            iteamColor: red),
                        BudgetCard(context,
                            label: "Outstanding Budget",
                            currency: "\$",
                            amount: "5000",
                            iteamColor: blue)
                      ],
                    ),
                     const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: size.width * 0.85,
                      width: size.width * 0.85,
                      child:  PieChartWidget(),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CategoryList(context, label: "Food", iteamColor: green),
                    CategoryList(context, label: "Shopping", iteamColor: brown),
                    CategoryList(context, label: "Travel", iteamColor: blue),
                    CategoryList(context,label: "Grosseries", iteamColor: purple),

                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
