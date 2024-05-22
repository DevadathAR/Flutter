
import 'package:d_mart_seller/const/const.dart';
import 'package:d_mart_seller/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProductController>();

    return Obx(()=>
      Scaffold(
        backgroundColor: purpleColor,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: (const Icon(
                Icons.arrow_back,
                color: white,
              ))),
          title: boldText(text: "Add Product", color: white, size: 16.0),
          actions: [
            controller.isloading.value?loadingIndicator(circleColor: white):
            
            TextButton(
                onPressed: () async{
                  controller.isloading(true);
                  await controller.uploadImages();
                  await controller.uploadProducts(context);
                  Get.back();
      
      
      
      
                }, child: normalText(text: save, color: white))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextFiled(
                    hint: "eg. BMW",
                    label: "Product ",
                    controller: controller.pNameController),
                10.heightBox,
                customTextFiled(
                    hint: "eg. desc",
                    label: "Description ",
                    isDesc: true,
                    controller: controller.pDescController),
                10.heightBox,
                customTextFiled(
                    hint: "eg. 15000",
                    label: "price ",
                    controller: controller.pPriceController),
                10.heightBox,
                customTextFiled(
                    hint: "eg. 549",
                    label: "quantity ",
                    controller: controller.pQuantityController),
                10.heightBox,
                productDropdown("Category", controller.categoryList,
                    controller.categoryvalue, controller),
                10.heightBox,
                productDropdown("subcategory", controller.subcategoryList,
                    controller.subcategoryvalue, controller),
                10.heightBox,
                const Divider(
                  color: white,
                ),
                boldText(
                    text: "Choose product images", color: white.withOpacity(.85)),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                        3,
                        (index) => controller.pImagesList[index] != null
                            ? Image.file(controller.pImagesList[index],width: 100,).onTap(() {controller.pickImage(index, context);})
                            : productImages(label: "${index + 1}").onTap(() {
                                controller.pickImage(index, context);
                              })),
                  ),
                ),
                10.heightBox,
                normalText(
                    text: "First image will be your dispaly image",
                    color: lightGrey.withOpacity(.40)),
                10.heightBox,
                const Divider(
                  color: white,
                ),
                boldText(
                    text: "Choose product colour", color: white.withOpacity(.85)),
                10.heightBox,
                Obx(
                  () => Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: List.generate(
                        9,
                        (index) => Stack(
                              alignment: Alignment.center,
                              children: [
                                VxBox()
                                    .color(Vx.randomPrimaryColor)
                                    .roundedFull
                                    .margin(const EdgeInsets.all(8))
                                    .size(70, 70)
                                    .make()
                                    .onTap(() {
                                  controller.selectedColorIndex.value = index;
                                }),
                                controller.selectedColorIndex.value == index
                                    ? const Icon(
                                        Icons.done,
                                        color: white,
                                      )
                                    : SizedBox()
                              ],
                            )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
