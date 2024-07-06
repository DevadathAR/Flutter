import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/const/fixed.dart';
import 'package:acron_wallet/view/Authenticate/Login.dart';
import 'package:acron_wallet/widgets/BGwidget.dart';
import 'package:acron_wallet/widgets/LoginTextFiled.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isChecked = false;

  void _onChanged(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [BGwidget(context),
          SizedBox(
            height: size.height * .25,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.09,
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
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: white),
              height: size.height * .6,
              width: size.width * .75,
              child: Column(
                children: [
                  const Text(
                    "SignUp",
                    style: TextStyle(
                        color: pureblack,
                        fontSize: 38,
                        fontWeight: FontWeight.w800),
                  ),
                  LoginTextFiled(label: "Name"),
                  LoginTextFiled(label: "Password"),
                  LoginTextFiled(label: "Confirm password"),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5),
                    child: Row(
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: _onChanged,
                          activeColor: blue,
                        ),
                        const Text(
                          term,
                          style: TextStyle(color: red),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Login();
                          },
                        ));
                      },
                      child: const Text("SignUp")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
