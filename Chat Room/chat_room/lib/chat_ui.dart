import 'package:flutter/material.dart';

class ChatUi extends StatelessWidget {
  const ChatUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Row(
              children: [
                Icon(Icons.camera_alt_outlined),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.search_rounded),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.view_headline_sharp)
              ],
            ),
          )
        ],
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 44, 129, 113),
                    ),
                    child: Center(child: Text("Status")),
                  ),
                  SizedBox(height: 55,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ListTile(
                            title: Text("data"),
                          ),
                        ],
                      ))
                ],
              ),
            ],
          )),
    );
  }
}
