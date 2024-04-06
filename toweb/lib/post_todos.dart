import 'package:flutter/material.dart';
import 'package:toweb/repo.dart';

class PostToDos extends StatefulWidget {
  const PostToDos({super.key});

  @override
  State<PostToDos> createState() => _PostToDosState();
}

class _PostToDosState extends State<PostToDos> {
  String _post_value = "empty";

  Network network = Network();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  network.postTodos().then((value) {
                    setState(() {
                      _post_value = value;
                    });
                  });
                },
                child: const Text("Create")),
            Text(_post_value)
          ],
        ),
      ),
    );
  }
}
