import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Expanded(
            child: Positioned.fill(
              child: SizedBox(
                height: size.height * 1,
                width: size.width * 1,
                child: const Image(
                  image: AssetImage("assets/image/redBG.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
