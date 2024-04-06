import 'package:colour_picker_flutter/theme_provider.dart';
import 'package:colour_picker_flutter/theme_scren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer(
          builder: (context, themeProvider, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
              title: "Flutter Provider Demo",
              theme: ThemeData(
                  primarySwatch: Colors.blue,
                  appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark)),
              home: ThemeScreen())),
    );
  }
}