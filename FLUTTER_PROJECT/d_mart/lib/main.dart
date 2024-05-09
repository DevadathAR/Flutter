
import 'package:d_mart/firebase_options.dart';
import 'package:d_mart/view/cart_scr/cart_scrn.dart';
import 'package:d_mart/view/catogery_scr/category_scrn.dart';
import 'package:d_mart/view/chat_scrn/chat_scrn.dart';
import 'package:d_mart/view/home_screen/home.dart';
import 'package:d_mart/view/splsh_scr/splash_scrn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:get/get.dart';



void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding:ViewBinding(),
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: fontGrey),
                backgroundColor: Colors.transparent)),
        debugShowCheckedModeBanner: false,
        title: appname,
        home:  SplashScreen());
  }
}
