import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          shape: const StadiumBorder(),
          label: const Row(
            children: [
              Icon(
                Icons.message_outlined,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Start chat")
            ],
          )),
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 136, 175, 226),
        leading: const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 249, 255, 255),
          child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png",))
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          SizedBox(
            width: 25,
          ),
          CircleAvatar(
            child: Icon(Icons.person),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 249, 255, 255),
        title: const Text("Messages",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w400,
              fontSize: 22,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: [
              const Resume(),
              Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.amberAccent,
                  )),
                  Column(
                    children: [
                      Container(child: (Image.network("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D")),),
                    ],
                  ),
              const Card(
                  color: Color.fromARGB(255, 255, 0, 0),
                  elevation: 10,
                  margin: EdgeInsets.all(5),
                  child: Text(
                    "Devadath AR",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  )),
              const Expanded(
                child: Messages(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 30,
      itemBuilder: (context, index) {
        return ListTile(
          title: const Text(
            "JM-SBICARD",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: const Text(
            "Dear Cardholder, use Flexipay EMI feature on your credit card to convert spends worth ...",
          ),
          leading: CircleAvatar(
            backgroundColor:
                index == 5 || index == 2 || index == 7 || index == 22
                    ? const Color.fromARGB(255, 0, 0, 255)
                    : const Color.fromARGB(255, 255, 0, 0),
            child: const Icon(
              Icons.person,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("10.10pm"),
              Icon(index <= 5 ? Icons.notification_add : Icons.notifications,
                  color: index <= 5
                      ? const Color.fromARGB(255, 4, 255, 0)
                      : const Color.fromARGB(255, 0, 0, 0)),
            ],
          ),
        );
      },
    );
  }
}

class Resume extends StatelessWidget {
  const Resume({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
              height: 80,
              color: const Color.fromARGB(164, 37, 89, 80),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'DEVADATH A R',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      'Engineer',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 60,
              height: 80,
              color: const Color.fromARGB(164, 37, 89, 80),
            ),
            const SizedBox(
              width: 180,
              height: 80,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: MyDetails(),
              ),
            ),
            const SizedBox(
              width: 10,
              height: 80,
            ),
            Container(
              width: 14,
              height: 80,
              color: const Color.fromARGB(164, 37, 89, 80),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDetails extends StatelessWidget {
  const MyDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Calicut, Kerala, India",
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.end,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "+91 9074948474 , +91 9048126853",
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.end,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "devadathar001@gmial.com",
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.end,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "dev_da.th",
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
