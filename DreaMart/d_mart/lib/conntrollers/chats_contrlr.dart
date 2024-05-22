import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:DreaMart/conntrollers/home_contrlrs.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    getChatId();
    
    super.onInit();
  }
  var chats = firestore.collection(chatCollection);
  var friendName = Get.arguments[0];
  var friendId = Get.arguments[1];
  var senderName = Get.find<HomeCntrlr>().username;
  var currentId = currentUser!.uid;
  var msgController = TextEditingController();
  dynamic chatDocID;
  var isLoading = false.obs;

  getChatId() async {


    isLoading(true);
    await chats
        .where('user', isEqualTo: {friendId: null, currentId: null})
        .limit(1)
        .get()
        .then((QuerySnapshot snapshot) {
          if (snapshot.docs.isNotEmpty) {
            chatDocID = snapshot.docs.single.id;
          } else {
            chats.add({
              'created_on': null,
              'last_msg': '',
              'user': {friendId: null, currentId: null},
              'toId': '',
              'fromId': '',
              'friend_name': friendName,
              'sender_name': senderName
            }).then((value) {
              chatDocID = value.id;
            });
          }
        });
        isLoading(false);
  }

  sendMsg(String msg) async {
    if (msg.trim().isNotEmpty) {
      chats.doc(chatDocID).update({
        'created_on': FieldValue.serverTimestamp(),
        'last_msg': msg,
        'toId': friendId,
        'fromId': currentId,
      });


chats.doc(chatDocID).collection(messageCollection).doc().set({'created_on': FieldValue.serverTimestamp(),
        'msg': msg,
        'uid': currentId,
        });

    }



  }
}
