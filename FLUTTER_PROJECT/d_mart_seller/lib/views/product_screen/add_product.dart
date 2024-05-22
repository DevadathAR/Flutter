import 'package:d_mart_seller/const/const.dart';
import 'package:d_mart_seller/controllers/product_controller.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {

          var controller = Get.find<ProductController>();

    return Scaffold(

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
          TextButton(
              onPressed: () {}, child: normalText(text: save, color: white))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextFiled(hint: "eg. BMW", label: "Product ",controller: controller.pNameController),
              10.heightBox,
              customTextFiled(
                  hint: "eg. desc", label: "Description ", isDesc: true,controller: controller.pDescController),
              10.heightBox,
              customTextFiled(hint: "eg. 15000", label: "price ",controller: controller.pPriceController),
              10.heightBox,
              customTextFiled(hint: "eg. 549", label: "quantity ",controller: controller.pQuantityController),
              10.heightBox,
              productDropdown("Category",controller.categoryList,controller.categoryvalue,controller),
              10.heightBox,
              productDropdown("subcategory",controller.subcategoryList,controller.subcategoryvalue,controller),
              10.heightBox,
              const Divider(
                color: white,
              ),
              boldText(
                  text: "Choose product images", color: white.withOpacity(.85)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    3, (index) => productImages(label: "${index + 1}")),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                                  .make(),
                              const Icon(
                                Icons.done,
                                color: white,
                              )
                            ],
                          )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
