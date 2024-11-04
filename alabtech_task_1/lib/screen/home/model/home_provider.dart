import 'package:flutter/material.dart';
import 'dart:async';

class BikeLocationProvider extends ChangeNotifier {
  double _bikePosition = 0.0;
  double get bikePosition => _bikePosition;

  late double _screenWidth;

  bool _isChecked = false; // Property for checkbox state
  bool get isChecked => _isChecked;

  String? _selectedTip; // Property to track the selected tip amount
  String? get selectedTip => _selectedTip;

  void setScreenWidth(double width) {
    _screenWidth = width;
  }

  void startAnimation() {
    const duration = Duration(milliseconds: 500);
    Timer.periodic(duration, (timer) {
      if (_bikePosition >= _screenWidth - 50) {
        timer.cancel();
      } else {
        _bikePosition += 5;
        notifyListeners();
      }
    });
  }

  void toggleCheckbox() {
    _isChecked = !_isChecked; // Toggle the checkbox state
    notifyListeners();
  }

  void selectTip(String amount) {
    _selectedTip = amount; // Set the selected tip amount
    notifyListeners();
  }
}


class ProductCardProvider extends ChangeNotifier {
  bool _isFavorite = false;
  bool get isFavorite => _isFavorite;

  void toggleFavorite() {
    _isFavorite = !_isFavorite;
    notifyListeners();
  }
}

