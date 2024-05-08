import 'package:d_mart/common_widget/applog_wid.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/view/auth_scrn/login_scrn.dart';
import 'package:d_mart/view/catogery_scr/home_screen/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(()=>LogInScrn());

      auth.authStateChanges().listen((User? user) {
        if (user == null && mounted) {
          Get.to(() => LogInScrn());
        } else {
          Get.to(() => Home());
        }
      });
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Image(
                image: AssetImage(
                  icSplashBg,
                ),
                width: 100,
                height: 100,
              ),
            ),
            applogWidget(),
            5.heightBox,
            appname.text
                .fontFamily(bold)
                .fontWeight(FontWeight.bold)
                .size(20)
                .white
                .make(),
            1.heightBox,
            appversion.text.gray800.make()
          ],
        ),
      ),
    );
  }
}
