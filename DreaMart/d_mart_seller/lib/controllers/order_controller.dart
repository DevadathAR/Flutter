import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart_seller/const/const.dart';

class OrderController extends GetxController {
  var orders = [];

  var confirmed = false.obs;
  var ondelivery = false.obs;
  var delivered = false.obs;

  getOrders(data) {
    for (var item in data['orders']) {
      orders.clear();

      if (item['vendor_id'] == currentUser!.uid) {
        orders.add(item);
      }
    }
  }

  changeStatus({title, status, docID}) async {
    var store = firestore.collection(ordersCollection).doc(docID);
    await store.set({title: status}, SetOptions(merge: true));
  }
}
