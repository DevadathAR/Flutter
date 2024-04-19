import 'package:book_king/const/colors.dart';
import 'package:book_king/const/string.dart';
import 'package:book_king/view/sign_up_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    bool? ischeck = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
            child: SizedBox(
              width: size.width * 0.75,
              height: size.height * 0.5,
              child: Column(
                children: [
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
                              prefixIcon: Icon(Icons.password)),
                        ),
                        SizedBox(
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
                              prefixIcon: Icon(Icons.password)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Checkbox(
                              value: false,
                              onChanged: (newvalue) {
                                setState(() {
                                  ischeck = newvalue;
                                });
                              }),
                          const Text("I Agree to the terms and coditions")
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignupConfirm(),
                            ));
                          },
                          color: ischeck == true? gray:blue,
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: black, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
