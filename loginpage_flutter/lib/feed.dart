import 'package:flutter/material.dart';

class MyFeed extends StatefulWidget {
  const MyFeed({super.key});

  @override
  State<MyFeed> createState() => _MyFeedState();
}

class _MyFeedState extends State<MyFeed> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Color.fromARGB(252, 0, 255, 98),);
  }
}