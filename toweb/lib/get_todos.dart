import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:toweb/repo.dart';

class ToDosList extends StatefulWidget {
  const ToDosList({super.key});

  @override
  State<ToDosList> createState() => _ToDosListState();
}

class _ToDosListState extends State<ToDosList> {
  List _todos = [];

  Network network= Network(); 

  @override
  void initState() {
    network.fetchTodos().then((value) {
      setState(() {
        _todos = value;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ToDos")),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_todos[index]["title"]),
            subtitle: Text(_todos[index]["completed"].toString()),
            leading: CircleAvatar(
              child: Text(
                _todos[index]["id"].toString(),
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            trailing: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              child: Text(
                _todos[index]["userId"].toString(),
                style:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          );
        },
      ),
    );
  }
}
