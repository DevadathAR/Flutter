// import 'dart:ffi';

import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});
  final String obj =
      "Graduate in Electronics and Communications Engineering with experience in the automotive sector with extensive knowledge of software unit verification of in-vehicle infotainment systems and practical experience.";
  final String prof = '''Domain - Automotive
Technology - Software Manual Testing
Framework - CPP Unit Framework

•Software unit verification and validation of In-Vehicle Infotainment systems of Tier-1s under ASPICE.
•Software unit verification and black box testing using CPP Unit framework and google mock.
•Worked for multiple features such as ADAS, BT Device management, Networking, Navigation etc...
•Identified the bugs in the problematic functions and reported to the developers
•Written test cases for checking behavior of the function and make sure the functions are covered using LCOV method.
•Updated codes on Git version control (GitLab) using and experience handling Jira classic,confluence,Jenkins and Polarion page.
•Also done Instrument Cluster requirement''';

  final String pro1 =
      '''•Employs deep learning technologies to effectively identify wild animal.
•Python language is used at the core level to develop the required technologies(YOLO) for identification.''';
  final String pro2 = '''
•Designed a system to ensure social distance protocol in public places using Arduino with python
''';
  @override
  Widget build(BuildContext context) {
    // Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 160,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Calicut, Kerala, India",
                        style: TextStyle(fontSize: 8),
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "+91 9074948474 , +91 9048126853",
                        style: TextStyle(fontSize: 8),
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "devadathar001@gmial.com",
                        style: TextStyle(fontSize: 8),
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "dev_da.th",
                        style: TextStyle(fontSize: 8),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                  height: 80,
                ),
                Container(
                  width:22,
                  height: 80,
                  color: Color.fromARGB(164, 37, 89, 80),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("OBJECTIVE",
                      style: TextStyle(
                          color: Color.fromARGB(255, 37, 89, 80),
                          shadows: [
                            Shadow(
                                offset: Offset(2, 2),
                                color: Color.fromARGB(190, 16, 11, 11),
                                blurRadius: 15)
                          ],
                          fontWeight: FontWeight.w600)),
                  Container(
                    height: 1,
                    width: 10,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(obj,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal,
                          fontSize: 10)),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("PROFESSIONAL EXPERIENCE",
                      style: TextStyle(
                          color: Color.fromARGB(255, 37, 89, 80),
                          shadows: [
                            Shadow(
                                offset: Offset(2, 2),
                                color: Color.fromARGB(1190, 16, 11, 11),
                                blurRadius: 15)
                          ],
                          fontWeight: FontWeight.w600)),
                  Container(
                    height: 1,
                    width: 10,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text("Acsia Technologies (Pvt) Ltd.",
                      style: TextStyle(
                          color: Color.fromARGB(158, 0, 0, 0),
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                          fontSize: 12)),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text("Software Test engineer- 6/2022- 10/2023",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.5)),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(prof,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal,
                          fontSize: 10)),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        height: 102,
                        width: 210,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("EDUCATION",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 37, 89, 80),
                                      shadows: [
                                        Shadow(
                                            offset: Offset(2, 2),
                                            color:
                                                Color.fromARGB(190, 16, 11, 11),
                                            blurRadius: 15)
                                      ],
                                      fontWeight: FontWeight.w600)),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                  '''• B.tech degree in Electronics And Communication Engineering from NSSCE Palakkad ''',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10)),
                              Text('''• Kerala Technologcal University''',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 102,
                        width: 1,
                        color: const Color.fromARGB(255, 44, 42, 36),
                      ),
                      const SizedBox(
                        height: 102,
                        width: 209.5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("SKILLS",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 37, 89, 80),
                                      shadows: [
                                        Shadow(
                                            offset: Offset(2, 2),
                                            color:
                                                Color.fromARGB(190, 16, 11, 11),
                                            blurRadius: 15)
                                      ],
                                      fontWeight: FontWeight.w600)),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Text('''• CPP
•C
•Python
•Dart
•Manul testing
•CI/CD
''',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('''• Git
•Jira
•Polarion
•Unit testing
•Black Box testing
•Confluance page
''',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text("PROJECTS",
                      style: TextStyle(
                          color: Color.fromARGB(255, 37, 89, 80),
                          shadows: [
                            Shadow(
                                offset: Offset(2, 2),
                                color: Color.fromARGB(190, 16, 11, 11),
                                blurRadius: 15)
                          ],
                          fontWeight: FontWeight.w600)),
                  Container(
                    height: 1,
                    width: 10,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Farm Protection From Wild Animal Attack",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 11)),
                  Text(pro1,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal,
                          fontSize: 10)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Social Distance Monitoring And Alarming System",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 11)),
                  Text(pro2,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal,
                          fontSize: 10)),
                  const Text("CERTIFICATES",
                      style: TextStyle(
                          color: Color.fromARGB(255, 37, 89, 80),
                          shadows: [
                            Shadow(
                                offset: Offset(2, 2),
                                color: Color.fromARGB(190, 16, 11, 11),
                                blurRadius: 15)
                          ],
                          fontWeight: FontWeight.w600)),
                  Container(
                    height: 1,
                    width: 10,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        height: 102,
                        width: 209.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MACHINE LEARNIG- Internship",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Certification on MACHINE LEARNING from CAMINO InfotechPvt Ltd , Kochi",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "IMAGE PROCESSING -Workshope",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "From NIT Calicut",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 102,
                          width: 209.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AUTOMOBILE PROTOTYPE- Workshop",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "From NSS College Of Engineering",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "NPTEL- Online certification",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Online certification on Design thinking -A primer",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
