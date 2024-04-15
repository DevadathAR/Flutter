import 'package:book_king/const/colors.dart';
import 'package:book_king/const/string.dart';
import 'package:book_king/view/home.dart';
import 'package:book_king/view/login.dart';
import 'package:book_king/view/sign_up_confirm.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Stack(
        children: [
          const Opacity(
              opacity: .25,
              child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image(
                    image: AssetImage("assets/image/book.jpg"),
                    fit: BoxFit.cover,
                  ))),
                  Center(
                    child: Container(width: size.width*0.75,
                    height: size.height*0.5,
                    child: Column(children:[
                      const Text(
                        "SIGN UP",
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
                                  prefixIcon: Icon(Icons.key)),
                            ),SizedBox(
                              height: size.width * 0.025,
                            ),
                            TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                  label: Text(retyppswd),
                                  hintText: hintpswd,
                                  isDense: true,
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.key)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: blue),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SignupConfirm(),
                                  ));
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.normal),
                                )),
                          ],
                        ),
                      )
                    ],),),
                  )
        ],
      ),
    );
  }
}
