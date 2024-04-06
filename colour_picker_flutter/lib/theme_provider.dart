import 'package:flutter/material.dart';
class ThemeProvider extends ChangeNotifier {
  Color mainColor = Colors.blue;
  double mainslider = 1 ;
  bool mainState= true;

  void changeThemeColor(Color random_color) {
    mainColor = random_color;
    notifyListeners();
  }

  void changeSlideValue(double slidervalue){
    mainslider = slidervalue;
    notifyListeners();

  }

  void chnageSwitchState(bool switchState){
    mainState = switchState;
    notifyListeners();
  }
}