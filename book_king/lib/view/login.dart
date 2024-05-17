import 'package:book_king/const/colors.dart';
import 'package:book_king/const/string.dart';
import 'package:book_king/view/home/home.dart';
import 'package:book_king/view/signingup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Opacity(
                    opacity: 0.33,
                    child: SizedBox(
                        height: size.height * .5,
                        width: double.infinity,
                        child: const Image(
                          image: AssetImage("assets/image/Book_figma.png"),
                          fit: BoxFit.cover,
                        ))),
                Padding(
                  padding: EdgeInsets.all(size.width * .05),
                  child: Column(
                    children: [
                      const Text(
                        "LOG IN",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: black),
                      ),
                      SizedBox(
                        width: size.width * .80,
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  label: Text(email),
                                  hintText: hintmail,
                                  isDense: true,
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.mail_outlined)),
                              validator: (mailId) {
                                return mailId!.isEmpty
                                    ? "Enter valid mail ID"
                                    : null;
                              },
                            ),
                            SizedBox(
                              height: size.width * 0.025,
                            ),
                            TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                  label: Text(pswd),
                                  hintText: hintpswd,
                                  isDense: true,
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.password)),
                              validator: (pswdthere) {
                                return pswdthere!.isEmpty
                                    ? "Enter your password"
                                    : null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            MaterialButton(
                              minWidth: double.infinity,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const BookHome(),
                                ));
                              },
                              color: blue,
                              child: const Text(
                                "Log In",
                                style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            MaterialButton(
                              minWidth: double.infinity,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SigningUp(),
                                ));
                              },
                              color: orenge,
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(onTap: () {},
                                  child: const CircleAvatar(
                                    child: Image(
                                        image: AssetImage("assets/image/fb.png")),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                GestureDetector(onTap: () {},
                                  child: const CircleAvatar(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/image/instalogo.jpeg")),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                GestureDetector(onTap: () {},
                                  child: const CircleAvatar(
                                    child: Image(
                                        image:
                                            AssetImage("assets/image/xlogo.png")),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
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
