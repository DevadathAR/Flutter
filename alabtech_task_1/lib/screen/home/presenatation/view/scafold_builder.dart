import 'package:alabtech_task_1/utilities.dart/color.dart';
import 'package:alabtech_task_1/utilities.dart/strings.dart';
import 'package:alabtech_task_1/utilities.dart/text_style.dart';
import 'package:flutter/material.dart';

class ScafoldBuilder extends StatelessWidget {
  final Widget child;
  const ScafoldBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: Text(
          name,
          style: AppTextStyle.boldText(size: 24, color: AppColors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
        backgroundColor: AppColors.lightblue,
      ),
      body: child,

    );
  }
}