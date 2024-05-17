import 'package:d_mart_seller/const/const.dart';

class LogInnScreen extends StatelessWidget {
  const LogInnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.heightBox,
              normalText(text: welcome, size: 18.0),
              20.heightBox,
              Row(
                children: [
                  Image.asset(
                    icLogo,
                    width: 70,
                    height: 80,
                  )
                      .box
                      .border(color: white)
                      .rounded
                      .padding(const EdgeInsets.all(8.0))
                      .make(),
                  10.widthBox,
                  boldText(
                    text: appname,
                    size: 22.0,
                  )
                ],
              ),
              60.heightBox,
              normalText(text: loginTo, size: 18,color: lightGrey),
              20.heightBox,
              Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: textfieldGrey,
                        hintText: emailhint,
                        prefixIcon: Icon(
                          Icons.email,
                          color: purpleColor,
                        ),
                        border: InputBorder.none),
                  ),
                  10.heightBox,
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: textfieldGrey,
                        hintText: passwordhint,
                        prefixIcon: Icon(
                          Icons.password,
                          color: purpleColor,
                        ),
                        border: InputBorder.none),
                  ),
                  10.heightBox,
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: normalText(
                              text: forgotPassword, color: purpleColor))),
                  30.heightBox,
                  SizedBox(
                      width: context.screenWidth - 40,
                      child: ourButton(
                          title: login,
                          color: purpleColor,
                          onPress: () {
                            Get.to(() => const Home());
                          }))
                ],
              )
                  .box
                  .white
                  .rounded
                  .outerShadowMd
                  .padding(const EdgeInsets.all(8))
                  .make(),
              20.heightBox,
              Center(child: normalText(text: anyProblem, color: lightGrey)),
              const Spacer(),
              Center(
                child: boldText(text: credit),
              ),
              20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
