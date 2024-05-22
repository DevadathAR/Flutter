

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {

  var isloading = false.obs;



  //text controllrs

  var emailController  = TextEditingController();
  var pswdController  = TextEditingController();
  
  //log i n metord

  Future<UserCredential?> loginMethod({ context}) async {
    UserCredential? userCredential;

    try {
      userCredential =
          await auth.signInWithEmailAndPassword(email: emailController.text, password: pswdController.text);
          
    } on FirebaseException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  //sign up

  Future<UserCredential?> signupMethod({email, pswd, context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: pswd);
    } on FirebaseException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  // storinng data method
  storeUserdata({name, pswd, email,}) async {
    print("authuser${auth.currentUser?.uid}");
    DocumentReference store =await firestore.collection(usersCollection).doc(auth.currentUser?.uid);
    store.set({'name': name, 'pswd': pswd, 'email': email, 'imageurl': "",'id':auth.currentUser?.uid,'cart_count': '00','wishlist_count': '00','order_count':'00'});
  }


  //singout method 

  signoutMethood(context)async{

    try{
      await auth.signOut();
    }
    catch(e){
      VxToast.show(context, msg: e.toString());
    }
  }
}
