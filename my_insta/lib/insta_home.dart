import 'package:flutter/material.dart';
import 'package:my_insta/insta_chat.dart';

class InstaHome extends StatelessWidget {
  const InstaHome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "")
      ]),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 2.5),
            child: TextButton(
                onPressed: () {},
                child: const Icon(
                  Icons.thumb_up_outlined,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.5),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ChatPage()));
                },
                child: const Icon(
                  Icons.message_outlined,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          "Instagram",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Column(
        children: [
          InstaStatus(size: size),
          // ListView.separated(physics: const NeverScrollableScrollPhysics(),scrollDirection: Axis.vertical,separatorBuilder: (context, index) {return const Divider();}, itemCount: 10,itemBuilder: (context, index) => const Text("data",style: TextStyle(color: Colors.black),))
        ],
      ),
    );
  }
}

class InstaStatus extends StatelessWidget {
  const InstaStatus({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        height: size.height * 0.125,
        color: const Color.fromARGB(255, 0, 0, 0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 200,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(
              right: 5,
            ),
            child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Color.fromARGB(255, 0, 0, 0),
                )),
          ),
        ),
      ),
    );
  }
}
