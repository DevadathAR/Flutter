import 'package:d_mart_seller/const/const.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
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
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextFiled(hint: "eg. BMW", label: "Product "),
              10.heightBox,
              customTextFiled(
                  hint: "eg. desc", label: "Description ", isDesc: true),
              10.heightBox,
              customTextFiled(hint: "eg. 15000", label: "price "),
              10.heightBox,
              customTextFiled(hint: "eg. 549", label: "quantity "),
              10.heightBox,
              productDropdown(),
              10.heightBox,
              productDropdown(),
              10.heightBox,
              Divider(
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
              Divider(
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
