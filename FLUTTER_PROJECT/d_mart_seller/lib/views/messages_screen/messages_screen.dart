import 'package:d_mart_seller/const/colors.dart';
import 'package:d_mart_seller/const/strings.dart';
import 'package:d_mart_seller/views/messages_screen/chat_screen.dart';
import 'package:d_mart_seller/views/widgets/normal_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: darkGrey,
            )),
        title: boldText(text: messages, size: 16.0, color: fontGrey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
            child: Column(
          children: List.generate(
              20,
              (index) => ListTile(
                onTap: (){Get.to(()=>const ChatScreen());},
                    leading: const CircleAvatar(
                        backgroundColor: purpleColor,
                        child: Icon(
                          Icons.person,color: white,
                        )),
                    title: boldText(text: name,color: fontGrey),
                    subtitle: normalText(text: "Last message",color: darkGrey),
                    trailing: normalText(text: "5.30",color: darkGrey

                    ),
                  )),
                  
        )),
      ),
    );
  }
}
