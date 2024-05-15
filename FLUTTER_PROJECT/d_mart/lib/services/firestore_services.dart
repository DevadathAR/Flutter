import 'package:d_mart/consts/consts.dart';

class FirestoreServices {
  //get users data
  static getUser(uid) {
    return firestore
        .collection(usersCollection)
        .where('id', isEqualTo: uid)
        .snapshots();
  }
  //

  static getProducts(category) {
    return firestore
        .collection(prodectsCollection)
        .where('p_category', isEqualTo: category)
        .snapshots();
  }

  static getCart(uid) {
    return firestore
        .collection(cartCollection)
        .where('added_by', isEqualTo: uid)
        .snapshots();
  }

  static deleteDocument(docId) {
    return firestore.collection(cartCollection).doc(docId).delete();
  }

  

 
  static getChatMessages(docId) {
    return firestore
        .collection(chatCollection)
        .doc(docId)
        .collection(messageCollection)
        .orderBy('created_on', descending: false)
        .snapshots();
  }

  static getAllOrders() {
    return firestore
        .collection(ordersCollection)
        .where('order_by', isEqualTo: currentUser!.uid)
        .snapshots();
  }

  static getWishList() {
    return firestore
        .collection(prodectsCollection)
        .where('p_wishlist', arrayContains: currentUser!.uid)
        .snapshots();
  }

  static getAllMessages() {
    return firestore.collection(chatCollection).where('fromId',isEqualTo: currentUser!.uid).snapshots();
  }
  static getCounts()async{
    var res =await Future.wait([
      firestore.collection(cartCollection).where('added_by',isEqualTo: currentUser!.uid).get().then((value){
        return value.docs.length;
      }),
      firestore.collection(prodectsCollection).where('p_wishlist',arrayContains: currentUser!.uid).get().then((value){
        return value.docs.length;
      }),
      firestore.collection(ordersCollection).where('order_by',isEqualTo: currentUser!.uid).get().then((value){
        return value.docs.length;
      }),
    ]);
    return res ;
  }
  static allProducts() {
    return firestore.collection(prodectsCollection).snapshots();
  }


   static getFeaturedProducts() {
    return firestore
        .collection(prodectsCollection)
        .where('is_featured', isEqualTo: true)
        .get();
  }
  static searchProduct(title){
    return firestore.collection(prodectsCollection).get();
  }

  static getSubcategoryProducts(title){
    return firestore.collection(prodectsCollection).where('p_subcategory',isEqualTo: title).snapshots();
  }

}
