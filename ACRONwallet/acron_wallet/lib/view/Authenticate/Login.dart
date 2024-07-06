import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/const/fixed.dart';
import 'package:acron_wallet/view/Authenticate/Signup.dart';
import 'package:acron_wallet/view/MyHome/Home.dart';
import 'package:acron_wallet/widgets/BGwidget.dart';
import 'package:acron_wallet/widgets/LoginTextFiled.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          BGwidget(context),
          SizedBox(
            height: size.height * .25,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.125,
                  ),
                  const Text(
                    "ACRON wallet",
                    style: TextStyle(
                        color: white,
                        fontSize: 38,
                        fontWeight: FontWeight.w800),
                  ),
                  const Text(
                    version,
                    style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              children: [SizedBox(height: size.height*.25,),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    color: white,
                  ),
                  height: size.height * .65,
                  width: size.width * .75,
                  child: Column(
                    children: [
                      const Text(
                        "LogIn",
                        style: TextStyle(
                            color: pureblack,
                            fontSize: 38,
                            fontWeight: FontWeight.w800),
                      ),
                      LoginTextFiled(label: "Name",hint: "Jacob J Jose"),
                      LoginTextFiled(label: "Password",hint: "* * * * * *"),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Home();
                            },
                          ));
                        },
                        child: const Text("LogIn"),
                        // style: const ButtonStyle(
                        //   backgroundColor: MaterialStatePropertyAll(orange),
                        // ),
                      ),
                      Align(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(noacc),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const Signup();
                                  },
                                ));
                              },
                              child: const Text(
                                "SignUp",
                                style: TextStyle(color: red),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(socialmedia),
                      SizedBox(height: size.height * 0.0125),
                      Container(
                        color: white,
                        height: size.height * 0.06,
                        width: size.width * 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => _launchURL(
                                  'https://www.facebook.com/profile.php?id=100008696829620'),
                              child: const Image(
                                image: AssetImage("assets/image/fb_logo.png"),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () => _launchURL(
                                  'https://www.instagram.com/dev_da.th/'),
                              child: const Image(
                                image: AssetImage("assets/image/instalogo.jpeg"),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () => _launchURL('https://x.com/_the_dev_'),
                              child: const Image(
                                image: AssetImage("assets/image/xlogo.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
