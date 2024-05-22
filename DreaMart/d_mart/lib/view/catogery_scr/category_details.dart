import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:DreaMart/common_widget/bg_widget.dart';
import 'package:DreaMart/common_widget/loading_indicator.dart';
import 'package:DreaMart/conntrollers/prodect_controller.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:DreaMart/services/firestore_services.dart';
import 'package:DreaMart/view/catogery_scr/item_details.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatefulWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switchCategory(widget.title);
  }

  switchCategory(title) {
    if (controller.subcat.contains(title)) {
      productMethod = FirestoreServices.getSubcategoryProducts(title);
    } else {
      productMethod = FirestoreServices.getProducts(title);
    }
  }

  var controller = Get.find<ProdectController>();

  dynamic productMethod;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
            appBar:
                AppBar(title: widget.title!.text.fontFamily(bold).white.make()),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            controller.subcat.length,
                            (index) => "${controller.subcat[index]}"
                                    .text
                                    .size(12)
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .makeCentered()
                                    .box
                                    .white
                                    .size(120, 60)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .rounded
                                    .make()
                                    .onTap(() {
                                  switchCategory("${controller.subcat[index]}");
                                  setState(() {});
                                })))),
                20.heightBox,
                StreamBuilder(
                    stream: productMethod,
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: loadingIndicator(),
                        );
                      } else if (snapshot.data!.docs.isEmpty) {
                        return Center(
                          child: "No products found!!!".text.fontWeight(FontWeight.w500).color(darkFontGrey).make(),
                        );
                      } else {
                        var data = snapshot.data!.docs;
                        return
                            // 20.heightBox,
                            Expanded(
                                child: GridView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: data.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            mainAxisExtent: 250,
                                            mainAxisSpacing: 8,
                                            crossAxisSpacing: 8),
                                    itemBuilder: (context, index) {
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                            data[index]['p_imgs'][0],
                                            width: 200,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          10.heightBox,
                                          "${data[index]['p_name']}"
                                              .text
                                              .color(darkFontGrey)
                                              .fontFamily(semibold)
                                              .make(),
                                          10.heightBox,
                                          "${data[index]['p_price']}"
                                              .numCurrency
                                              .text
                                              .color(redColor)
                                              .fontFamily(bold)
                                              .size(16)
                                              .make(),
                                        ],
                                      )
                                          .box
                                          .white
                                          .roundedSM
                                          .outerShadowSm
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .padding(const EdgeInsets.all(16))
                                          .make()
                                          .onTap(() {
                                        controller
                                            .checkIfFav(data[index]['p_name']);
                                        Get.to(() => ItemDetails(
                                              title: "${data[index]['p_name']}",
                                              data: data[index],
                                            ));
                                      });
                                    }));
                      }
                    }),
              ],
            )));
  }
}
