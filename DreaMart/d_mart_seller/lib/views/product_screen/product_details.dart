import 'package:d_mart_seller/const/const.dart';

class ProductDetails extends StatelessWidget {
  final dynamic data;
  const ProductDetails({super.key,this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: (const Icon(
              Icons.arrow_back,
              color: darkGrey,
            ))),
        title: boldText(text: "${data['p_name']}", color: fontGrey, size: 16.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxSwiper.builder(
                  autoPlay: true,
                  height: 350,
                  itemCount: data['p_imgs'].length,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  itemBuilder: (context, index) {
                    return Image.network(
                      data['p_imgs'][index],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    );
                  }),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldText(
                        text: "${data['p_name']}", color: fontGrey, size: 16.0),

                    10.heightBox,
                    Row(
                      children: [
                        boldText(text: "${data['p_category']}", color: fontGrey, size: 16.0),
                        10.widthBox,
                        normalText(
                            text: "${data['p_subcategory']}", color: fontGrey, size: 16.0)
                      ],
                    ),10.heightBox,

                    //rating
                    VxRating(
                      isSelectable: false,
                      value: double.parse(data['p_rating']),
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      maxRating: 5,
                      size: 25,
                    ),

                    10.heightBox,
                    boldText(text: "${data['p_price']}", color: red, size: 18.0),

                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 100,
                                child:
                                    boldText(text: "Color", color: fontGrey)),
                            Row(
                              children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Color(data['p_colors'][index]))
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .make()
                                    .onTap(() {
                                }),
                              ),
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                        20.heightBox,

                        //quantity row
                        Row(
                          children: [
                            SizedBox(
                                width: 100,
                                child: boldText(
                                    text: "Quantity", color: fontGrey)),
                            normalText(text: "${data['p_quantity']}", color: fontGrey)
                          ],
                        )
                      ],
                    )
                        .box
                        .padding(const EdgeInsets.all(8))
                        .white
                        .shadowSm
                        .make(),
                    const Divider(),
                    10.heightBox,
                    boldText(text: "Descrption", color: fontGrey),
                    10.heightBox,
                    normalText(
                        text: "${data['p_desc']}", color: fontGrey)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
