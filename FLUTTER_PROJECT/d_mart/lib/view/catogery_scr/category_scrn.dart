import 'package:DreaMart/common_widget/bg_widget.dart';
import 'package:DreaMart/conntrollers/prodect_controller.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:DreaMart/consts/list.dart';
import 'package:DreaMart/view/catogery_scr/category_details.dart';
import 'package:get/get.dart';

class CategoryScrn extends StatelessWidget {
  const CategoryScrn({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProdectController());
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: categories.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categories_img[index],
                    width: 200,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  categories_list[index]
                      .text
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .make()
                ],
              )
                  .box
                  .white
                  .rounded
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(() {
                    controller.getSubCategories(categories_list[index]);
                Get.to(() => CategoryDetails(title: categories_list[index]),);
              });
            }),
      ),
    ));
  }
}
