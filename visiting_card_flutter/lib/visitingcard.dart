import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Expanded(
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Logo(),
                        Details(),
                      ],
                    ),
                    const SizedBox(
                      height: 500,
                    ),
                    const Image(
                      image: AssetImage(
                        "assets/images/beach.jpg",
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Image(
                      image: AssetImage(
                        "assets/images/foto.jpg",
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Details();
                        },
                        child: const Text("Start")),
                    OutlinedButton(onPressed: () {}, child: const Text("Stop")),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.restart_alt_outlined))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Card(
          elevation: 10,
          color: Color.fromARGB(255, 126, 120, 120),
          child: Padding(
            padding: EdgeInsets.only(right: 5, left: 5, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Devadath A R",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 22,
                      fontWeight: FontWeight.w900),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.call_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    Text(
                      '''   :+91 9074948474
    +91 9048126853''',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.mail_outlined,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    Text(
                      "   devadathar001@gmail.com",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Visiting time 10AM -2Pm",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, bottom: 5),
      child: Column(
        children: [
          Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0th0sG4iz8UMtXCI6JpOifOuMduUqTXBGkA&usqp=CAU",
                      scale: 2))),
          const Text(
            "Dev's",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const Text(
            '''Work Ethic: Play by the rules,
          but be ferocious''',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 126, 120, 120)),
          )
        ],
      ),
    );
  }
}
