import 'package:d_mart_seller/const/const.dart';
import 'package:d_mart_seller/views/widgets/custom_textfiled.dart';
import 'package:d_mart_seller/views/widgets/normal_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: (const Icon(
              Icons.arrow_back,
              color: white,
            ))),
        title: boldText(text: "Add Product", color: white, size: 16.0),actions: [
          TextButton(onPressed: (){}, child: normalText(text:save,color: white))
        ],
        
      ),
      body:  Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [customTextFiled(hint: "eg. BMW",label: "Product name")],),
      ),
    );
  }
}
