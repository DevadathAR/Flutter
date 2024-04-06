import 'package:flutter/material.dart';
import 'package:loginpage_flutter/enterotp.dart';

class ReSetPswd extends StatefulWidget {
  const ReSetPswd({super.key});

  @override
  State<ReSetPswd> createState() => _ReSetPswdState();
}

class _ReSetPswdState extends State<ReSetPswd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(iconColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(),
                labelText: "Enter your mail ID",
                icon: Icon(Icons.mail),
              ),
            ),const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtpEnter(
            ),));}, child: const Text("Sent OTP to this mail"))
          ],
        ),
      )),
    );
  }
}
