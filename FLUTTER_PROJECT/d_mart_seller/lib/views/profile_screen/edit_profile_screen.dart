import 'package:d_mart_seller/const/const.dart';
import 'package:d_mart_seller/views/widgets/custom_textfiled.dart';
import 'package:d_mart_seller/views/widgets/normal_text.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: editProfile, size: 16.0),
        actions: [
          TextButton(
            onPressed: () {},
            child: normalText(text: save),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              imgProduct,
              width: 150,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: white),
              onPressed: () {},
              child: normalText(text: changeimg, color: fontGrey),
            ),
            10.heightBox,
            Divider(
              color: white,
            ),

            customTextFiled(label: name,hint: "eg. Jacob J Jose"),5.heightBox,
            customTextFiled(label: password,hint: passwordhint),5.heightBox,
            customTextFiled(label: confirmpswd,hint: passwordhint),5.heightBox,
          ],
        ),
      ),
    );
  }
}
