import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart/common_widget/bg_widget.dart';
import 'package:d_mart/common_widget/loading_indicator.dart';
import 'package:d_mart/conntrollers/prodect_controller.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/services/firestore_services.dart';
import 'package:d_mart/view/catogery_scr/item_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title});

  @override
  Widget build(BuildContext context) {

    var controller = Get.find<ProdectController>();
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(title: title!.text.fontFamily(bold).white.make()),
      body: StreamBuilder(stream: FirestoreServices.getProducts(title), 
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot){
        if(!snapshot.hasData){
          return Center(child: loadingIndicator(),);
        }
        else if(snapshot.data!.docs.isEmpty){
          return Center(child:"No products found!!!".text.color(darkFontGrey).make() ,);

        }
        else{
          var data =  snapshot.data!.docs;
          return Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        controller.subcat.length,
                        (index) => 
                        "${controller.subcat[index]}"
                            .text
                            .size(12)
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .makeCentered()
                            .box
                            .white
                            .size(120, 60)
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .rounded
                            .make()))),
            20.heightBox,
            Expanded(
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          "${data[index]['p_price']}".numCurrency
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
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .padding(const EdgeInsets.all(16))
                          .make().onTap(() {
                            controller.checkIfFav(data[index]['p_name']);
                            Get.to(()=>ItemDetails(title: "${data[index]['p_name']}",data: data[index],));});
                      
                    }))
          ],
        ),
      );}
      })
    ));
  }
}
