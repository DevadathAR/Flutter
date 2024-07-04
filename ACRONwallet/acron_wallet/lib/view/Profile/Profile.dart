import 'package:acron_wallet/const/colors.dart';
import 'package:acron_wallet/view/Profile/EditProfile/EditProfile.dart';
import 'package:acron_wallet/view/Profile/Helpper/ProfileTextfiled.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions:  [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: const Icon(Icons.edit).onTap(() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const EditProfile();
              },
            ));
          }),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        title: const Text(
          "ACRON wallet",
          style: TextStyle(color: red),
        ),
      ),
      body: Stack(
        children: [
          const Expanded(
              child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage("assets/image/redBG.png"),
                    fit: BoxFit.fill,
                  ))),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "MY PROFILE",
                    style: TextStyle(
                        color: white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    border: Border.all(color: pureblack),
                    color: white,
                  ),
                  child: Builder(
                    builder: (context) {
                      return ClipOval(clipBehavior: Clip.antiAlias, child: const Image(image: AssetImage("assets/image/me.jpg"),));
                    }
                  ),
                ),
              ),
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 25,
              ),
              Center(
                  child: ProfileTexfiled(context, length: 0.75, label: "Name")),
              const SizedBox(
                height: 15,
              ),
              Center(
                  child:
                      ProfileTexfiled(context, length: 0.75, label: "E-mail")),
              const SizedBox(
                height: 15,
              ),
              Center(
                  child: ProfileTexfiled(context,
                      length: 0.75, label: "Phone number")),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.125),
                child: Row(
                  children: [
                    ProfileTexfiled(context, length: 0.60, label: "Currency"),
                    SizedBox(
                      width: size.width * 0.025,
                    ),
                    ProfileTexfiled(context, length: 0.125, label: "\$"),
                  ],
                ),
              )
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            ],
          ),
        ],
      ),
    );
  }
}
