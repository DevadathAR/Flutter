import 'package:flutter/material.dart';
import 'package:loginpage_flutter/login.dart';

class OtpEnter extends StatefulWidget {
  const OtpEnter({super.key});

  @override
  State<OtpEnter> createState() => _OtpEnterState();
}

class _OtpEnterState extends State<OtpEnter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.pin,color: Color.fromARGB(255, 255, 255, 255),),
                    labelText: "Enter the OTP",
                    border: OutlineInputBorder())),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LogInPage(),
                  ));
                },
                child: const Text("Go to log in page"))
          ],
        ),
      ),
    );
  }
}
