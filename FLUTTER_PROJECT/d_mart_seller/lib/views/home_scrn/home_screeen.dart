import 'package:d_mart_seller/views/widgets/appbar_widget.dart';
import 'package:d_mart_seller/views/widgets/dashboard_button.dart';
import 'package:d_mart_seller/views/widgets/normal_text.dart';

import '../../const/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(dashbord),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashbordButton(context,
                    title: products, count: 566, icon: icProducts),
                dashbordButton(context,
                    title: orders, count: 269, icon: icOrders),
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashbordButton(context,
                    title: rating, count: 4.5, icon: icStar),
                dashbordButton(context,
                    title: totalSales, count: 135, icon: icOrders),
              ],
            ),
            10.heightBox,
            const Divider(),
            10.heightBox,
            boldText(text: popularproducts, color: darkGrey, size: 16.0),
            20.heightBox,
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                  3,
                  (index) => ListTile(
                    
                    onTap: (){},
                        leading: Image.asset(
                          imgProduct,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        title: boldText(text: "Product title",color: fontGrey,size: 14.0),
                        subtitle: normalText(text: "₹ 40.0",color: darkGrey,size: 12.0),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
