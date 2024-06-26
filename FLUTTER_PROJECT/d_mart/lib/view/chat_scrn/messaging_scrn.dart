import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:DreaMart/common_widget/loading_indicator.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:DreaMart/services/firestore_services.dart';
import 'package:DreaMart/view/chat_scrn/chat_scrn.dart';
import 'package:get/get.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title:
            "MyMessages".text.color(darkFontGrey).fontFamily(semibold).make(),
      ),
      body: StreamBuilder(
          stream: FirestoreServices.getAllMessages(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: loadingIndicator(),
              );
            } else if (snapshot.data!.docs.isEmpty) {
              return "No messages yet".text.color(darkFontGrey).makeCentered();
            } else {
              var data = snapshot.data!.docs;
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(child: ListView.builder(
                        itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                            onTap: () {
                              Get.to(()=>ChatScreen(),arguments: [data[index]['friend_name'],data[index]['toId'],]);
                            },
                            leading: CircleAvatar(backgroundColor: redColor, child: Icon(Icons.person,color: 
                            whiteColor,),),
                            
                              title: "${data[index]['friend_name']}"
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                                  subtitle: "${data[index]['last_msg']}".text.make(),),
                        );
                      }))
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
