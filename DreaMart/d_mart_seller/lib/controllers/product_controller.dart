import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart_seller/const/const.dart';
import 'package:d_mart_seller/models/category_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProductController extends GetxController {

  var isloading = false.obs;
  var pNameController = TextEditingController();
  var pDescController = TextEditingController();
  var pPriceController = TextEditingController();
  var pQuantityController = TextEditingController();

  var categoryList = <String>[].obs;
  var subcategoryList = <String>[].obs;


  List<Category> category = [];
  var pImagesList = RxList<dynamic>.generate(3, (index) => null);
  var categoryvalue = ''.obs;
  var subcategoryvalue = ''.obs;
  var selectedColorIndex = 0.obs;
  var pImageLinks = [];

  getcategories() async {
    var data = await rootBundle.loadString("lib/services/category_model.json");
    var cat = categoryModelFromJson(data);
    category = cat.categories;
  }

  populatedCategoryList() {
    categoryList.clear();

    for (var item in category) {
      categoryList.add(item.name);
    }
  }

  populatedSubCategory(cat) {
    subcategoryList.clear();

    var data = category.where((element) => element.name == cat).toList();

    for (var i = 0; i < data.first.subcategory.length; i++) {
      subcategoryList.add(data.first.subcategory[i]);
    }
  }



  pickImage(index,context)async{
    try{
      final img = await ImagePicker().pickImage(source: ImageSource.gallery,imageQuality: 80);
      if(img ==null){
        return;
      }
      else{
        pImagesList[index]=File(img.path);
      }
    }
    catch(e){
      VxToast.show(context, msg: e.toString());

    }
  }

  uploadImages()async{
    pImageLinks.clear();
    for(var item in pImagesList){

      var filename = basename(item.value);
    var destination = 'images/vendor${currentUser!.uid}/$filename';
    Reference ref = FirebaseStorage.instance.ref().child(destination);
    await ref.putFile(File(item));
    var n = await ref.getDownloadURL();

    }
  }


  uploadProducts(context)async{
    var store = firestore.collection(prodctsCollection).doc();
    await store.set({
      'is_featured':false,
      'p_category':categoryvalue.value,
      'p_subcategory':subcategoryvalue.value,
      'p_colors':FieldValue.arrayUnion([Colors.red.value,Colors.brown.value]),
      'p_imgs':FieldValue.arrayUnion(pImageLinks),
      'p_wishlist':FieldValue.arrayUnion([]),
      'p_desc':pDescController.text,
      'p_name':pNameController.text,
      'p_price':pPriceController.text,
      'p_quantity':pQuantityController.text,
      'p_seller':Get.find<HomeController>().username,
      'p_rating':5.0,
      'vendor_id':currentUser!.uid,
      'featured_id':'',
      

    });
    isloading(false);
    VxToast.show(context, msg: "Product uploaded");
  }

  addFeatured(docId)async{
    await firestore.collection(prodctsCollection).doc(docId).set({
      'featured_id':currentUser!.uid,
      'is_featured':true,
    },SetOptions(merge: true));
  }
  removeFeatured(docId)async{
    await firestore.collection(prodctsCollection).doc(docId).set({
      'featured_id':'',
      'is_featured':false,
    },SetOptions(merge: true));
  }

  removeProducts(docId)async{
    await firestore.collection(prodctsCollection).doc().delete();
  }
}
