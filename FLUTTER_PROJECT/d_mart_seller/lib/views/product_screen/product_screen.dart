import 'package:d_mart_seller/views/product_screen/add_product.dart';
import 'package:d_mart_seller/views/product_screen/product_details.dart';
import 'package:d_mart_seller/views/widgets/appbar_widget.dart';
import 'package:d_mart_seller/views/widgets/normal_text.dart';
import 'package:get/get.dart';

import '../../const/const.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => AddProduct());
          },
          backgroundColor: flotingcolor,
          child: const Icon(Icons.add),
        ),
        appBar: appBarWidget(products),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(
                  20,
                  (index) => ListTile(
                        onTap: () {
                          Get.to(() => ProductDetails());
                        },
                        leading: Image.asset(
                          imgProduct,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        title: boldText(
                            text: "Product title", color: fontGrey, size: 14.0),
                        subtitle: normalText(
                            text: "₹ 40.0", color: darkGrey, size: 12.0),
                        trailing: VxPopupMenu(
                            arrowSize: 0.0,
                            menuBuilder: () => Column(
                                  children: List.generate(
                                      popupMenuIcons.length,
                                      (index) => Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Row(
                                              children: [
                                                Icon(popupMenuIcons[index]),
                                                10.widthBox,
                                                normalText(
                                                    text: popMenuTitles[index],
                                                    color: darkGrey)
                                              ],
                                            ).onTap(() {}),
                                          )),
                                ).box.roundedSM.white.width(200).make(),
                            clickType: VxClickType.singleClick,
                            child: const Icon(Icons.more_vert_outlined)),
                      )),
            ),
          ),
        ));
  }
}
