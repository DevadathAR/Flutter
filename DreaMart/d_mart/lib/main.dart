
import 'package:DreaMart/firebase_options.dart';
import 'package:DreaMart/view/splsh_scr/splash_scrn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:DreaMart/consts/consts.dart';
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
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: fontGrey),
                backgroundColor: Colors.transparent)),
        debugShowCheckedModeBanner: false,
        title: appname,
        home:  const SplashScreen());


        
  }
}


