import 'package:book_king/const/colors.dart';
import 'package:book_king/const/string.dart';
import 'package:book_king/view/book_3dot.dart';
import 'package:book_king/view/book_filter.dart';
import 'package:book_king/view/book_help.dart';
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
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const BookHelp(),
            ));
          },
          child: const Text("Help")),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
        BottomNavigationBarItem(icon: Icon(Icons.badge), label: "badge"),
      ]),
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: const Text(
          appname,
          style: TextStyle(
              color: orenge, fontWeight: FontWeight.w900, fontSize: 30),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BookFilter(),
                ));
              },
              child: const Icon(Icons.filter_alt_rounded)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BookThreeDot(),
                  ));
                },
                child: const Icon(Icons.list)),
          )
        ],
      ),
    );
  }
}
