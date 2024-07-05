import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/const/lists.dart';
import 'package:acron_wallet/view/Category/Helpper/AddCategory.dart';
import 'package:acron_wallet/view/Category/Helpper/CategoryCard.dart';
import 'package:acron_wallet/view/Category/Helpper/CategorySpentList.dart';
import 'package:acron_wallet/view/Profile/Profile.dart';
import 'package:acron_wallet/widgets/BGwidget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: size.height * 0.05,
          right: size.width * 0.05,
        ),
        child: SizedBox(
          width: size.height * 0.07,
          height: size.height * 0.07,
          child: FloatingActionButton(
            elevation: 15,
            backgroundColor: floatingbrown,
            tooltip: "Add category",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AddCategory();
                },
              ));
            },
            child: const Text(
              "+",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
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
