import 'package:d_mart_seller/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var pNameController = TextEditingController();
  var pDescController = TextEditingController();
  var pPriceController = TextEditingController();
  var pQuantityController = TextEditingController();

  var categoryList = <String>[].obs;
  var subcategoryList = <String>[].obs;

  List<Category> category = [];
  var pImagesList = [].obs;
  var categoryvalue = ''.obs;
  var subcategoryvalue = ''.obs;
  var selectedColorIndex = 0.obs;

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
}
