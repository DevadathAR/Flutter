import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart/common_widget/loading_indicator.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/services/firestore_services.dart';
import 'package:d_mart/view/order_scrn/orders_details.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "MyOrders".text.color(darkFontGrey).fontFamily(semibold).make(),
      ),
      body: StreamBuilder(stream: FirestoreServices.getAllOrders(), builder: (BuildContext context,AsyncSnapshot<QuerySnapshot>snapshot){
        if(!snapshot.hasData){
          return Center(child: loadingIndicator(),);
        }
        else if(snapshot.data!.docs.isEmpty){
          return "No orders yet".text.color(darkFontGrey).makeCentered();
        }else{


          var data = snapshot.data!.docs;
          return ListView.builder( itemCount: data.length,
            itemBuilder: (BuildContext context, int index){
            return
             ListTile(
              leading: "${index+1}".text.fontFamily(bold).color(darkFontGrey).xl.make(),
              title: data[index]['order_code'].toString().text.color(redColor).fontFamily(semibold).make(),
              subtitle:data[index]['total_amount'].toString().numCurrency.text.color(textfieldGrey).fontFamily(bold).make(),
              trailing: IconButton(onPressed: (){Get.offAll(OrdersDetails());}, icon: Icon(Icons.arrow_forward_ios_rounded,color: darkFontGrey,)),
             );
          },);
        }
      }),
    );
  }
}
