
import 'package:d_mart/firebase_options.dart';
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



/*
import 'package:d_mart/consts/consts.dart';

Widget orderStatus() {
  return Column(
    children: [
      ListTile(
        leading: const Icon(
          Icons.done,
          color: redColor,
        )
            .box
            .border(color: redColor)
            .roundedSM
            .padding(EdgeInsets.all(8))
            .make(),
        trailing: SizedBox(
          height: 100,
          width: 120,
          child: Row(
            children: [
              "Order Placed".text.color(darkFontGrey).make(),
             const Icon(
                Icons.done,
                color: redColor,
              )
            ],
          ),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.thumb_up,
          color: Vx.blue700,
        )
            .box
            .border(color: Vx.blue100)
            .roundedSM
            .padding(EdgeInsets.all(8))
            .make(),
        trailing: SizedBox(
          height: 100,
          width: 120,
          child: Row(
            children: [
              "Order Confirmed".text.color(darkFontGrey).make(),
              const Icon(
                Icons.done,
                color: redColor,
              )
            ],
          ),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.car_crash_sharp,
          color: purple,
        ).box.border(color: purple).roundedSM.padding(EdgeInsets.all(8)).make(),
        trailing: SizedBox(
          height: 100,
          width: 120,
          child: Row(
            children: [
              "Order Delivery".text.color(darkFontGrey).make(),
              const Icon(
                Icons.done,
                color: redColor,
              )
            ],
          ),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.done,
          color: green,
        ).box.border(color: green).roundedSM.padding(EdgeInsets.all(8)).make(),
        trailing: SizedBox(
          height: 100,
          width: 120,
          child: Row(
            children: [
              "Delivered".text.color(darkFontGrey).make(),
              const Icon(
                Icons.done,
                color: redColor,
              )
            ],
          ),
        ),
      ),
    ],
  );
}
*/