import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart/conntrollers/home_contrlrs.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  var totalP = 0.obs;

  //txt conttrol details conntroller

  var addressConntroller = TextEditingController();
  var cityConntroller = TextEditingController();
  var stateConntroller = TextEditingController();
  var postalCodeConntroller = TextEditingController();
  var phoneConntroller = TextEditingController();
  var paymentIndex = 0.obs;
  
  late dynamic productSnapshot;
  var products = [];

  calculate(data){
    totalP.value = 0;
    for(var i =0;i< data.length ;i++){
      totalP.value = totalP.value + int.parse(data[i]['tprice'].toString());

    }
  }

  changePaymentIndex(index){
    paymentIndex.value = index;
  }

  placeMyOrder({required orderPaymentMethod,required totalAmount})async{


    await   getProductDetails();
    await firestore.collection(ordersCollection).doc().set({
      'order_code':"233981237",
      'order_date':FieldValue.serverTimestamp(),
      'order_by':currentUser!.uid,
      'order_by_name':Get.find<HomeCntrlr>().username,
      'order_email':currentUser!.email,
      'order_by_address':addressConntroller.text,
      'order_by_state':stateConntroller.text,
      'order_by_city':cityConntroller.text,
      'order_by_phone':phoneConntroller.text,
      'order_by_postalcode':postalCodeConntroller.text,
      'shipping_method':"Home Delivery",
      'payment_method':orderPaymentMethod,
      'order_placed':true,
      'order_confirmed':false,
      'order_delivered':false,
      'order_on_delivery':false,
      'order_amount':totalAmount,
      'orders':FieldValue.arrayUnion(products)
    });

  }


  getProductDetails(){

    products.clear();
    for(var i=0;i<productSnapshot.length;i++){
      
        products.add({
          'color':productSnapshot[i]['color'],
          'img':productSnapshot[i]['img'],
          'qty':productSnapshot[i]['qty'],
          'title':productSnapshot[i]['title']

        });
       
    }
     print(products);
  }

 


}