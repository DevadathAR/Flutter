import 'package:alabtech_task_1/screen/home/model/home_provider.dart';
import 'package:alabtech_task_1/screen/home/presenatation/view/home_page.dart';
import 'package:alabtech_task_1/screen/home/presenatation/view/product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BikeLocationProvider()),
        ChangeNotifierProvider(create: (context) => ProductCardProvider()),
      ],
      child: MaterialApp(
        title: 'Bike Location Animation',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
