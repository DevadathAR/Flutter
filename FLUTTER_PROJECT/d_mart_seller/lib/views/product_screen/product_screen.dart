
import 'package:d_mart_seller/views/widgets/appbar_widget.dart';
import 'package:d_mart_seller/views/widgets/normal_text.dart';

import '../../const/const.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),backgroundColor: purpleColor,),
      appBar: appBarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: List.generate(20, (index) => ListTile(
                        
                        onTap: (){},
                            leading: Image.asset(
                              imgProduct,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            title: boldText(text: "Product title",color: fontGrey,size: 14.0),
                            subtitle: normalText(text: "₹ 40.0",color: darkGrey,size: 12.0),
                          )),),
        ),
      ));
  }
}