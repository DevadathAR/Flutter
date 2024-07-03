import 'package:acron_wallet/const/colors.dart';

final listcolor = [green, purple, brown, orange, lightgreen, teal,blue, pink,golden, yellow, ];
final listcategory = ["Food","Shopping","Travel","Grosseries","Rent","Movies","Fuel"];
List<double> listamount = [3000,1500,2000,5000,4000,1000,3000];
double totalamountspent() {
  double totalspent = 0;
  for (int i = 0; i < listamount.length; i++) {
    totalspent += listamount[i];
  }
  return totalspent;
}

