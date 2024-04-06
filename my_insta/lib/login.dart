import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_insta/insta_home.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [Container(height: size.height *0.5,
          width: double.infinity,
          color: Colors.black,
          alignment: Alignment.center,
          child: const Text("Welcome\nTo\nThe\nClub",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 40,fontWeight: FontWeight.w900),),
        
          ),
            Padding(
              padding: const EdgeInsets.only(left:50.0,right: 10,top: 50),
              child: Column(
                children: [
                  TextFormField(decoration: const InputDecoration(labelText: "User Name"),),
                  const SizedBox(height: 10,),
                  TextFormField(decoration: const InputDecoration(labelText: "Enter Password"),),
                  TextButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {return const InstaHome();},));
                    
                  }, child: const Text("Forget password")),
                  Lottie.network("https://lottie.host/a25c1f1d-790a-4de3-9e8e-94df2ee2965b/xXVp0CnfE5.json"),
                  Lottie.network("https://lottie.host/1e559225-85b5-4074-af37-d18ecdb6efa2/w7QMm2IqPU.json"),
                ],
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}