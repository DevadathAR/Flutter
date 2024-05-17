import 'package:d_mart_seller/const/const.dart';

class ShopSetting extends StatelessWidget {
  const ShopSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: shopSettings, size: 16.0),
        actions: [
          TextButton(
            onPressed: () {},
            child: normalText(text: save),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextFiled(label: shopName, hint: nameHint),10.heightBox,
            customTextFiled(label: address, hint: shopAddress),10.heightBox,
            customTextFiled(label: mobile, hint: shopMobileHint),10.heightBox,
            customTextFiled(label: website, hint: shopWebsiteHint),10.heightBox,
            customTextFiled(label: decsription, hint: shopDescHint,isDesc: true),
          ],
        ),
      ),
    );
  }
}
