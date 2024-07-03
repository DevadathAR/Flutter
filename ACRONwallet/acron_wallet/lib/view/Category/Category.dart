import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/const/lists.dart';
import 'package:acron_wallet/view/Category/Helpper/CategoryCard.dart';
import 'package:acron_wallet/view/Category/Helpper/CategorySpentList.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
          const Positioned.fill(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/image/redBG.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
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
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: listcategory.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryCard(
                        context,
                        currency: "\$",
                        iteamamount: listamount[index].toString(),
                        iteamcolor: listcolor[index],
                        label: listcategory[index],
                      ).onTap(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const CategorySpentList();
                          },
                        ));
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
