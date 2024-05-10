import 'package:d_mart/consts/consts.dart';
import 'package:d_mart/view/order_scrn/comp/order_status.dart';

class OrdersDetails extends StatelessWidget {
  final dynamic data;
  const OrdersDetails({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Order Details".text.fontFamily(semibold).makeCentered(),
      ),
      body: Column(
        children: [
          OrderStatus(
              color: redColor,
              icon: Icons.done,
              title: "Order Placed",
              showDone: data['order_placed'])
        ],
      ),
    );
  }
}
