import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/controller/Cateorycontroller.dart';
import 'package:acron_wallet/view/Category/Category.dart';
import 'package:flutter/material.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  late final CategoryController _categoryController;

  @override
  void initState() {
    super.initState();
    _categoryController = CategoryController();
  }

  @override
  void dispose() {
    _categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SizedBox(
            height: size.height * 1,
            width: size.width * 1,
            child: const Image(
              image: AssetImage("assets/image/redBG.png"),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "ADD CATEGORY",
                    style: TextStyle(
                      color: white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: size.width * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: white,
                    ),
                    child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Category name",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        )),
                  ),
                  Container(
                    height: 50,
                    width: size.width * 0.65,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: white,
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: TextFormField(
                              controller: _categoryController.textController,
                              decoration: const InputDecoration(
                                  hintText: " ",
                                  fillColor: pureblack,
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .35,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(green)),
                    onPressed: () {
                      _categoryController.addCategory(() {
                        setState(() {});
                      });
                      Navigator.pop(context, MaterialPageRoute(
                        builder: (context) {
                          return CategoryPage();
                        },
                      ));
                    },
                    child: const Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: white),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
