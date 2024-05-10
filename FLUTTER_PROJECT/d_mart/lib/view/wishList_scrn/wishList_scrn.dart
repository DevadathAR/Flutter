import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart/common_widget/loading_indicator.dart';
import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/services/firestore_services.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "MyWishlist".text.color(darkFontGrey).fontFamily(semibold).make(),
      ),
      body: StreamBuilder(stream: FirestoreServices.getWishList(), builder: (BuildContext context,AsyncSnapshot<QuerySnapshot>snapshot){
        if(!snapshot.hasData){
          return Center(child: loadingIndicator(),);
        }
        else if(snapshot.data!.docs.isEmpty){
          return "No wishlist yet".text.color(darkFontGrey).makeCentered();
        }else{
          return Container();
        }
      }),
    );
  }
}
