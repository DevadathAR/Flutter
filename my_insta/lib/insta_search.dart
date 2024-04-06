import 'package:flutter/material.dart';

class InstaSearch extends StatelessWidget {
  const InstaSearch({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "Explore"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "Post"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "Reel"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "Profile",backgroundColor: Colors.black)
      ]),
      // appBar: AppBar(backgroundColor: Color.fromARGB(255, 0, 0, 0),),
      body: SafeArea(
        child: Column(
          children: [InstaSearchBar(size: size), RandomPost(size: size)],
        ),
      ),
    );
  }
}

class RandomPost extends StatelessWidget {
  const RandomPost({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(122, 192, 192, 193),
              // color: Colors.limeAccent,
            ),
            width: size.width * 0.30,
            height: size.width * 0.3,
            child: const Image(image: AssetImage("assets/images/pic4.jpg")),
            // child: TextButton(onPressed: (){},child: const Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgm5a_T9Nfihh1wnYbGlNsSEjm_c7nJGQbag&usqp=CAU"))),
          ),
        ),
        itemCount: 60,
      ),
    );
  }
}

class InstaSearchBar extends StatelessWidget {
  const InstaSearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 0, 0),
      height: size.height * 0.05,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 49, 49, 49),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Icon(
                  Icons.search_rounded,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Search",
                  style: TextStyle(
                      color: Color.fromARGB(255, 191, 189, 189), fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
