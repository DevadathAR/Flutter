import 'package:book_king/const/colors.dart';
import 'package:book_king/const/string.dart';
import 'package:flutter/material.dart';

class BookHome extends StatefulWidget {
  const BookHome({super.key});

  @override
  State<BookHome> createState() => _BookHomeState();
}

class _BookHomeState extends State<BookHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: const Text(appname,
          style: TextStyle(
              color: orenge,
              fontWeight: FontWeight.w900,
              fontSize: 30),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextButton(
              onPressed: () {}, child: const Icon(Icons.filter_alt_rounded)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(onPressed: () {}, child: const Icon(Icons.list)),
          )
        ],
      ),
    );
  }
}
