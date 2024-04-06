import 'package:flutter/material.dart';
import 'package:toweb/repo.dart';

class ImageTodos extends StatefulWidget {
  const ImageTodos({super.key});

  @override
  State<ImageTodos> createState() => _ImageTodosState();
}

class _ImageTodosState extends State<ImageTodos> {
  Network network = Network();
  List _data = [];
  List imageUrl = [];

  @override
  void initState() {
    network.fetchDataFromApi().then((value) {
      setState(() {
        _data = value;
        _data.forEach((element) {
          imageUrl.add(element['url']);
        });
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('List of cat images'),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: imageUrl.length,
          itemBuilder: (context, index) {
            return Image.network(
              imageUrl[index],
              fit: BoxFit.cover,
            );
          }),
    );
  }
}