import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart/common_widget/home_button.dart';
import 'package:d_mart/common_widget/loading_indicator.dart';
import 'package:d_mart/conntrollers/home_contrlrs.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/consts/list.dart';
import 'package:d_mart/services/firestore_services.dart';
import 'package:d_mart/view/catogery_scr/item_details.dart';
import 'package:d_mart/view/home_screen/comp/feature_butn.dart';
import 'package:d_mart/view/home_screen/comp/search_scrn.dart';
import 'package:get/get.dart';

class HomeScrn extends StatelessWidget {
  const HomeScrn({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomeCntrlr>();

    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      padding: const EdgeInsets.all(16),
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              controller: controller.searchController,
              decoration: InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                  fillColor: whiteColor,
                  hintText: search,
                  hintStyle: const TextStyle(color: textfieldGrey),
                  suffixIcon: const Icon(Icons.search).onTap(() {
                    if (controller.searchController.text.isNotEmptyAndNotNull) {
                      Get.to(() => SearchScrn(
                            title: controller.searchController.text,
                          ));
                    }
                  })),
            ).box.outerShadowSm.make(),
          ),
          10.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: slider_list.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        slider_list[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    },
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => homeButtons(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth / 2.5,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title: index == 0 ? todaydeal : flashsale)),
                  ),
                  10.heightBox,
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: second_slider_list.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        second_slider_list[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    },
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => homeButtons(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth / 3.5,
                            icon: index == 0
                                ? icTopCategories
                                : index == 1
                                    ? icBrands
                                    : icTopSeller,
                            title: index == 0
                                ? topcat
                                : index == 1
                                    ? brands
                                    : topseller)),
                  ),
                  20.heightBox,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featcat.text
                          .color(darkFontGrey)
                          .size(22)
                          .fontFamily(semibold)
                          .make()),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  featureButton(
                                      icon: feature_img1[index],
                                      title: feature_title1[index]),
                                  10.heightBox,
                                  featureButton(
                                      icon: feature_img2[index],
                                      title: feature_title2[index])
                                ],
                              )).toList(),
                    ),
                  ),
                  20.heightBox,
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: redColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredprod.text.white
                            .fontFamily(bold)
                            .size(18)
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: FutureBuilder(
                                future: FirestoreServices.getFeaturedProducts(),
                                builder: (BuildContext context,
                                    AsyncSnapshot<QuerySnapshot> snapshot) {
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: loadingIndicator(),
                                    );
                                  } else if (snapshot.data!.docs.isEmpty) {
                                    return "No featured products"
                                        .text
                                        .white
                                        .makeCentered();
                                  } else {
                                    var featureddata = snapshot.data!.docs;
                                    // Get.find<HomeCntrlr>().fetchFeatured(snapshot.data!.docs);
                                    return Row(
                                        children: List.generate(
                                            featureddata.length,
                                            (index) => Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Image.network(
                                                      featureddata[index]
                                                          ['p_imgs'][0],
                                                      width: 130,
                                                      height: 130,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    10.heightBox,
                                                    // 10.widthBox,
                                                    "${featureddata[index]['p_name']}"
                                                        .text
                                                        .color(darkFontGrey)
                                                        .fontFamily(semibold)
                                                        .make(),
                                                    10.heightBox,
                                                    "${featureddata[index]['p_price']}"
                                                        .numCurrency
                                                        .text
                                                        .color(redColor)
                                                        .fontFamily(bold)
                                                        .size(16)
                                                        .make(),
                                                    // 500.widthBox
                                                  ],
                                                )
                                                    .box
                                                    .white
                                                    .roundedSM
                                                    .margin(const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 4))
                                                    .padding(
                                                        const EdgeInsets.all(8))
                                                    .make()
                                                    .onTap(() {
                                                  Get.to(() => ItemDetails(
                                                        title:
                                                            "${featureddata[index]['p_name']}",
                                                        data:
                                                            featureddata[index],
                                                      ));
                                                })));
                                  }
                                }))
                      ],
                    ),
                  ),
                  20.heightBox,
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: second_slider_list.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        second_slider_list[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    },
                  ),
                  20.heightBox,
                  StreamBuilder(
                      stream: FirestoreServices.allProducts(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (!snapshot.hasData) {
                          return loadingIndicator();
                        } else {
                          var allproductsdata = snapshot.data!.docs;
                          return GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: allproductsdata.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 8,
                                      crossAxisSpacing: 2,
                                      mainAxisExtent: 300),
                              itemBuilder: (context, index) {
                                return Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      allproductsdata[index]['p_imgs'][0],
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                    const Spacer(),
                                    10.heightBox,
                                    // 10.widthBox,
                                    "${allproductsdata[index]['p_name']}"
                                        .text
                                        .color(darkFontGrey)
                                        .fontFamily(semibold)
                                        .make(),
                                    10.heightBox,
                                    "${allproductsdata[index]['p_price']}"
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
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .padding(const EdgeInsets.all(16))
                                    .make()
                                    .onTap(() {
                                  Get.to(() => ItemDetails(
                                        title:
                                            "${allproductsdata[index]['p_name']}",
                                        data: allproductsdata[index],
                                      ));
                                });
                              });
                        }
                      })
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
