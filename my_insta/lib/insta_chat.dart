import 'package:flutter/material.dart';
import 'package:my_insta/insta_search.dart';
import 'package:my_insta/insta_finance.dart';


class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  final String hi = "hi";
  List<String> name = [
    "Kunj",
    "Dev",
    "App",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyWallet(),));},
          backgroundColor: const Color.fromARGB(255, 44, 129, 113),
          shape: const StadiumBorder(),
          label: const Row(
            children: [
              Icon(
                Icons.wallet,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          )),
      appBar: AppBar(
        centerTitle: false,
        leading: const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 44, 129, 113),
          child: Icon(
            Icons.sentiment_satisfied_alt_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 129, 113),
        title: const Text(
          "CHAT ROOM",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      
                    },
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
                TextButton(
                    onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const InstaSearch(),));},
                    child: const Icon(
                      Icons.search_rounded,
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.view_headline_sharp,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ))
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                color: const Color.fromARGB(255, 44, 129, 113),
                width: double.infinity,
                height: 75,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: name.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                          height: size.width * .18,
                          width: size.width * .18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: const Color.fromARGB(255, 67, 68, 68)),
                          child: Center(
                              child: Text(
                            name[index],
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ))),
                    ),
                  ),
                )),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: MyMessagess(name: name),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyMessagess extends StatelessWidget {
  const MyMessagess({
    super.key,
    required this.name,
  });

  final List<String> name;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return const Divider(
          color: Color.fromARGB(255, 0, 0, 8),
        );
      },
      itemCount: name.length,
      itemBuilder: (context, index) {
        return TextButton(
          onPressed: () {},
          child: ListTile(
            leading: const CircleAvatar(
              child: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROT-CS96P9CrdjIHEwn5533GDa8ic9npwEKw&usqp=CAU",
                      scale: 5)),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name[index],
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "Message",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Today",
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 92, 92),
                      fontSize: 10,
                      fontStyle: FontStyle.normal),
                ),
                Icon(
                  Icons.notification_add,
                  color: index == 3
                      ? const Color.fromARGB(255, 0, 119, 255)
                      : const Color.fromARGB(255, 4, 255, 0),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
