import 'package:flutter/material.dart';
// import 'package:location/location.dart';

class CarFirstPage extends StatefulWidget {
  const CarFirstPage({super.key});

  @override
  State<CarFirstPage> createState() => _CarFirstPageState();
}

class _CarFirstPageState extends State<CarFirstPage> {
  List random_serv = [
    "assets/buy_car.png",
    "assets/car_loan.png",
    "assets/pay_challan.png",
    "assets/Rto_check.png",
    "assets/sell_car.png",
    "assets/service.png",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "Home",
            backgroundColor: Color.fromARGB(98, 152, 152, 152)),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.trolley,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "Buy Car"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.sell_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "Sell Car"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "Loan"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.car_crash_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "My Car"),
      ]),
      appBar: AppBar(
        leading: const Icon(
          Icons.location_on_outlined,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        backgroundColor: const Color.fromARGB(255, 249, 254, 255),
        actions: [
          TextButton(
              onPressed: () {},
              child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 249, 254, 255),
                  child: Icon(
                    Icons.person_3_outlined,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0,right: 20,top: 5),
              child: SearchBar(
                  elevation: MaterialStatePropertyAll(0),
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(52, 116, 116, 116)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
                  leading: Icon(Icons.search),
                  hintText: "Search to buy used cars",
                  hintStyle: MaterialStatePropertyAll(
                      TextStyle(color: Color.fromARGB(107, 0, 0, 0)))),
            ),
            const Image(image: AssetImage("assets/car.png")),
            Container(
              height: size.height * .25,
              width: double.infinity,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: 6,
                  itemBuilder: (context, index) => TextButton(
                      onPressed: () {},
                      child: Image(image: AssetImage(random_serv[index])))),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 50,
                itemBuilder: (context, index) => TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepOrange,
                      ),
                      width: size.width * .8,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            side:
                                BorderSide(color: Color.fromARGB(80, 0, 0, 0))),
                        color: Color.fromARGB(255, 255, 255, 255),
                        // elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "For You",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(206, 0, 0, 0)),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            side:
                                BorderSide(color: Color.fromARGB(80, 0, 0, 0))),
                        color: Color.fromARGB(255, 255, 255, 255),
                        // elevation: 15,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "Last Viewed",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(206, 0, 0, 0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 50,
                itemBuilder: (context, index) => TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amberAccent,
                      ),
                      width: size.width * .8,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
