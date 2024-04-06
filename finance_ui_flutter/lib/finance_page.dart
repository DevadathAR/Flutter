import 'package:flutter/material.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity), label: "Profile")
      ]),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              IconAndBalance(),
              DetailInfo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Statistic extends StatelessWidget {
  const Statistic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0),
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircleAvatar(
                      backgroundColor: Color.fromARGB(222, 39, 162, 101),
                      radius: 35,
                      child: Icon(
                        Icons.gpp_good_sharp,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 50,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Financial",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      Text("Your financial condition is good")
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                height: 0.5,
                width: double.infinity,
                color: const Color.fromARGB(255, 106, 106, 108),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "View Statistic >",
                  style: TextStyle(color: Color.fromARGB(222, 39, 162, 101)),
                ))
          ],
        ),
      ),
    );
  }
}

class DetailInfo extends StatelessWidget {
  const DetailInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        const Statistic(),
        const SizedBox(
          height: 35,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Detail Information",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextButton(
                onPressed: () {},
                child: const Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 170,
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(37, 3, 255, 175),
                        child: Icon(Icons.send_sharp),
                      ),
                      Text("Send Money"),
                      Text("\$80.50\n\n\n")
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                onPressed: () {},
                child: const Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 170,
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(37, 3, 255, 32),
                        child: Icon(Icons.payment),
                      ),
                      Text("Pay Items"),
                      Text("\$150.50\n\n\n")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextButton(
                onPressed: () {},
                child: const Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 170,
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(37, 230, 76, 244),
                        child: Icon(
                          Icons.payments_sharp,
                          color: Color.fromARGB(255, 56, 56, 214),
                        ),
                      ),
                      Text("Top Up"),
                      Text("\$60.30\n\n\n")
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                onPressed: () {},
                child: const Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 170,
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(37, 37, 3, 255),
                        child: Icon(Icons.call_received_sharp,
                            color: Color.fromARGB(255, 56, 56, 214)),
                      ),
                      Text("Request Money"),
                      Text("\$120.50\n\n\n")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "More services",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              color: Colors.cyan,
              height: 300,
              width: double.infinity,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Card(
                      child: Column(
                        children: [
                          SizedBox(
                            // color: Colors.amberAccent,
                            height: 50,
                            width: 170,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(37, 37, 3, 255),
                            child: Icon(Icons.call_received_sharp,
                                color: Color.fromARGB(255, 56, 56, 214)),
                          ),
                          Text("Request Money"),
                          Text("\$120.50\n\n\n")
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 170,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(37, 37, 3, 255),
                            child: Icon(Icons.call_received_sharp,
                                color: Color.fromARGB(255, 56, 56, 214)),
                          ),
                          Text("Request Money"),
                          Text("\$120.50\n\n\n")
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              color: Colors.blueGrey,
              height: 300,
              width: double.infinity,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 170,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(37, 37, 3, 255),
                            child: Icon(Icons.call_received_sharp,
                                color: Color.fromARGB(255, 56, 56, 214)),
                          ),
                          Text("Request Money"),
                          Text("\$120.50\n\n\n")
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 170,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(37, 37, 3, 255),
                            child: Icon(Icons.call_received_sharp,
                                color: Color.fromARGB(255, 56, 56, 214)),
                          ),
                          Text("Request Money"),
                          Text("\$120.50\n\n\n")
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              height: 600,
              width: double.infinity,
              color: Colors.indigo,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 170,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(37, 37, 3, 255),
                            child: Icon(Icons.call_received_sharp,
                                color: Color.fromARGB(255, 56, 56, 214)),
                          ),
                          Text("Request Money"),
                          Text("\$120.50\n\n\n")
                        ],
                      ),
                    ),
                  ),
                ),
                itemCount: 6,
              )),
        )
      ],
    );
  }
}

class IconAndBalance extends StatelessWidget {
  const IconAndBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(222, 39, 162, 101),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 55,
                width: 55,
                child: TextButton(
                  onPressed: () {},
                  child: const Icon(Icons.arrow_back,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 55,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 55,
                width: 55,
                child: TextButton(
                  onPressed: () {},
                  child: const Icon(Icons.list,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ],
          ),
          const SizedBox(
              height: 35,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10),
                child: Text("Your Wallet",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w800)),
              )),
          const SizedBox(
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\$1,750.50",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 26,
                            fontWeight: FontWeight.w800)),
                    SizedBox(
                      width: 10,
                    ),
                    Card(
                      shape: ContinuousRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(1000))),
                      elevation: 2,
                      color: Color.fromARGB(156, 255, 119, 0),
                      child: Text(" ^ 15% ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 255, 255, 255))),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
