import 'package:flutter/material.dart';
import 'package:toweb/get_todos.dart';
import 'package:toweb/image_todos.dart';
import 'package:toweb/repo.dart';
import 'package:toweb/post_todos.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final todoweb = Network();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ImageTodos());
  }
}
