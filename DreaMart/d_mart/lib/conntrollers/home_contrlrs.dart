import 'package:DreaMart/consts/consts.dart';
import 'package:get/get.dart';

class HomeCntrlr extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    getUsernaem();
    super.onInit();
  }
  var currentNavIndex = 0.obs;
  var username = '';
  var featureList = [];
  var searchController = TextEditingController();

  getUsernaem() async {
    var n = await firestore
        .collection(usersCollection)
        .where('id', isEqualTo: currentUser!.uid)
        .get()
        .then((value) {
      if (value.docs.isNotEmpty) {
        return value.docs.single['name'];
      }
    });
    username = n;
  }
}
