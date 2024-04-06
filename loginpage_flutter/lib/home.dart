import 'package:flutter/material.dart';
import 'package:loginpage_flutter/feed.dart';
import 'package:loginpage_flutter/support.dart';

class ClubHome extends StatelessWidget {
  const ClubHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          shape: const StadiumBorder(),
          backgroundColor: Color.fromARGB(96, 255, 255, 255),
          onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => SupportCenter(),));},
          label: const Text(
            "Support",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          )),
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () => const MyFeed(),
                child: const Icon(
                  Icons.create,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
            label: "Feed"),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.attractions,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: "Center"),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: "News"),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: "Acc"),
      ]),
      appBar: AppBar(
        title: const Text("CLUB",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 40,
                fontWeight: FontWeight.w900)),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: TextButton(
                onPressed: () {},
                child: const Icon(
                  Icons.list,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
          )
        ],
      ),
      body: Container(
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
              ),
              alignment: Alignment.bottomCenter,
            )
          ],
        ),
      ),
    );
  }
}
