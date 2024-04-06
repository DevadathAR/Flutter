import 'package:flutter/material.dart';
import 'package:loginpage_flutter/collectinfo.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                  color: Color.fromARGB(255, 42, 41, 41),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              "To",
              style: TextStyle(
                  color: Color.fromARGB(255, 42, 41, 41),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              "The",
              style: TextStyle(
                  color: Color.fromARGB(255, 42, 41, 41),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              "CLUB",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            ),
            TextButton(
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UserCreation(),));},
                child: const Text("Tap me to create an account in CLUB",style: TextStyle(color: Color.fromARGB(144, 255, 255, 255)),)),
            const Image(
              image: NetworkImage(
                "https://img.freepik.com/premium-vector/eyes-cat-black-background_38359-267.jpg",
                scale: 2,
              ),
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
      ),
    );
  }
}
