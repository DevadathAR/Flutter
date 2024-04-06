import 'package:flutter/material.dart';
import 'package:loginpage_flutter/acccreate.dart';
import 'package:loginpage_flutter/help.dart';
import 'package:loginpage_flutter/home.dart';
import 'package:loginpage_flutter/resetpswd.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          shape: const StadiumBorder(),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const HelpCenter(),
            ));
          },
          label: const Text(
            "Help",
            style: TextStyle(color: Color.fromARGB(100, 255, 255, 255)),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.5,
                width: double.infinity,
                color: Colors.black,
                alignment: Alignment.center,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Color.fromARGB(255, 42, 41, 41),
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "To",
                      style: TextStyle(
                          color: Color.fromARGB(255, 42, 41, 41),
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "The",
                      style: TextStyle(
                          color: Color.fromARGB(255, 42, 41, 41),
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "CLUB",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 40,
                          fontWeight: FontWeight.w900),
                    ),
                    Image(
                      image: NetworkImage(
                        "https://img.freepik.com/premium-vector/eyes-cat-black-background_38359-267.jpg",
                        scale: 2,
                      // image: AssetImage(assets/images/cateye.png
                      ),
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "User Name", icon: Icon(Icons.person)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                      
                          labelText: "Password", icon: Icon(Icons.key)),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const ClubHome();
                            },
                          ));
                        },
                        child: const Text("Log in")),
                    const SizedBox(
                      height: 2,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const ReSetPswd();
                            },
                          ));
                        },
                        child:
                            const Text("Ohh damn, I forgot my CLUB user name/password",style: TextStyle(color: Color.fromARGB(100, 255, 255, 255)),)),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const CreateAcc();
                            },
                          ));
                        },
                        child: const Text("I don't have an account in CLUB",style: TextStyle(color: Color.fromARGB(100, 255, 255, 255)),)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
