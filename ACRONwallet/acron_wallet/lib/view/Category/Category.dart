import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/view/Category/Helpper/CategoryCard.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(Icons.person),
          ),
          SizedBox(
            width: 30,
          )
        ],
        title: const Text(
          "ACRON wallet",
          style: TextStyle(color: red),
        ),
      ),
      body: Stack(
        children: [
          const Expanded(
              child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage("assets/image/redBG.png"),
                    fit: BoxFit.fill,
                  ))),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "MY EXPENSES",
                    style: TextStyle(
                        color: white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryCard(
                    context,
                    label: "Food",
                    iteamcolor: green,
                    iteamamount: "5000",
                    currency: "\$",
                  ),
                  CategoryCard(
                    context,
                    label: "Shopping",
                    iteamcolor: brown,
                    iteamamount: "6000",
                    currency: "\$",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryCard(
                    context,
                    label: "Travel",
                    iteamcolor: blue,
                    iteamamount: "4000",
                    currency: "\$",
                  ),
                  CategoryCard(
                    context,
                    label: "Grosseries",
                    iteamcolor: purple,
                    iteamamount: "3000",
                    currency: "\$",
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
