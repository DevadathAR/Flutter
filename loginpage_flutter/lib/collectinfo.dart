import 'package:flutter/material.dart';
import 'package:loginpage_flutter/login.dart';

class UserCreation extends StatefulWidget {
  const UserCreation({super.key});

  @override
  State<UserCreation> createState() => _UserCreationState();
}

class _UserCreationState extends State<UserCreation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: " First Name",
              )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: " Middle Name",
              )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: " Last Name",
              )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: " User Name",
              )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: " Gender",
              )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: " D.O.B(dd/mm/yy)",
              )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: " mail ID",
              )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: " Phone number",
              )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                  decoration: const InputDecoration(
                labelText: " Password",
              )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                  decoration: const InputDecoration(
                labelText: " Confirm your password",
              )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LogInPage(),
                    ));
                  },
                  child: const Text("Finish"))
            ],
          ),
        ),
      ),
    );
  }
}
