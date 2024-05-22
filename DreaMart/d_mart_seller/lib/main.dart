import 'package:d_mart_seller/const/const.dart';
import 'package:d_mart_seller/firebase_options.dart';
import 'package:d_mart_seller/views/auth_screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkUser();
  }
  var isloggedin = false;

  checkUser() async {
    auth.authStateChanges().listen((User? user) {
      if (user == null && mounted) {
        isloggedin = false;
      } else {
        isloggedin = true;
      }
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      home: isloggedin ? const Home() : const LogInScreen(),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent, elevation: 0.0)),
    );
  }
}
