import 'package:d_mart/consts/consts.dart';
import 'package:flutter/foundation.dart';

class FirestoreServices {

  //get users data
  static getUser(uid){
    return firestore.collection(usersCollection).where('id',isEqualTo: uid).snapshots();

  }
  //

  static getProducts(category){
    return
    firestore.collection(prodectsCollection).where('p_category',isEqualTo: category).snapshots();
  }
}