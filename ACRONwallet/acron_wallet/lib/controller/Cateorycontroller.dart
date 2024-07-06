import 'package:flutter/material.dart';
import 'package:acron_wallet/const/lists.dart';

class CategoryController {
  final TextEditingController textController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  void addCategory(VoidCallback updateState) {
    if (textController.text.isNotEmpty) {
      listcategory.add(textController.text);
      textController.clear();
      updateState();
    }
  }

  void addAmount(VoidCallback updateState) {
    if (amountController.text.isNotEmpty) {
      final amount = double.tryParse(amountController.text);
      if (amount != null) {
        listamount.add(amount);
        amountController.clear();
        updateState();
      } else {
        print("Invalid amount entered. Please enter a number.");
      }
    }
  }

  void dispose() {
    textController.dispose();
    amountController.dispose();
  }
}
