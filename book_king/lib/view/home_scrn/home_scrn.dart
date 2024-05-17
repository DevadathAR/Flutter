import 'package:book_king/const/list.dart';
import 'package:book_king/const/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(height: double.infinity,
        width: double.infinity,
          child: const Opacity(opacity: .25,child: Image(
          image: AssetImage("assets/image/book.jpg"),
          fit: BoxFit.cover,
        ))
            ),
        Container(
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  
                  const SizedBox(
                    height: 15,
                  ),
                  VxSwiper.builder(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 19 / 6,
                    itemCount: list_slide_image.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: TextButton(
                          onPressed: () {},
                          child: Image(
                            image: AssetImage(list_slide_image[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
