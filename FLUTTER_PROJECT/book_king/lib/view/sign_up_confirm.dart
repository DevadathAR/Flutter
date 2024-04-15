import 'package:book_king/view/login.dart';
import 'package:flutter/material.dart';

class SignupConfirm extends StatefulWidget {
  const SignupConfirm({super.key});

  @override
  State<SignupConfirm> createState() => _SignupConfirmState();
}

class _SignupConfirmState extends State<SignupConfirm> {

   void initState() {
    super.initState();
    _signupMsg();
  }

  void _signupMsg() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => const LoginPage(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(
      child: Text('''Your account is created
    You can Log In now'''),
    ),);
  }
}