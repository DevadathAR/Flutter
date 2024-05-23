import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:DreaMart/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileController extends GetxController {
  var profileImagePath = ''.obs;
  var profileImageLink = '';
  var isloading = false.obs;

  var nameController = TextEditingController();
  var oldPassController = TextEditingController();
  var newPassController = TextEditingController();

  changeImage(BuildContext context) async {
    try {
      final img = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 70,
      );
      if (img != null) {
        profileImagePath.value = img.path;
      }
    } on PlatformException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  uploadProfileImage() async {
    if (profileImagePath.value.isNotEmpty) {
      try {
        var filename = basename(profileImagePath.value);
        var destination = 'images/${currentUser!.uid}/$filename';
        Reference ref = FirebaseStorage.instance.ref().child(destination);
        await ref.putFile(File(profileImagePath.value));
        profileImageLink = await ref.getDownloadURL();
      } catch (e) {
        print('Failed to upload image: $e');
      }
    }
  }

  updateProfile({String? name, String? password, String? imgUrl}) async {
    var store = firestore.collection(usersCollection).doc(currentUser!.uid);
    await store.set({
      'name': name,
      'password': password,
      'imageurl': imgUrl,
    }, SetOptions(merge: true));
    isloading(false);
  }

  changeAuthPassword({required String email, required String password, required String newpassword}) async {
    final cred = EmailAuthProvider.credential(email: email, password: password);

    await currentUser!.reauthenticateWithCredential(cred).then((value) {
      currentUser!.updatePassword(newpassword);
    }).catchError((error) {
      print('Password update failed: $error');
    });
  }
}
 