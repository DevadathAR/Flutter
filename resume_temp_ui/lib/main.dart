import 'package:flutter/material.dart';
import 'package:resume_temp_ui/front_page.dart';

void main() {
  runApp(const ResumeUi());
}

class ResumeUi extends StatelessWidget {
  const ResumeUi({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: const FrontPage(),
    );
  }
}
