// import 'package:flutter/material.dart';

// class CalendarPage extends StatefulWidget {
//   CalendarPage({super.key});

//   @override
//   State<CalendarPage> createState() => _CalendarPageState();
// }

// class _CalendarPageState extends State<CalendarPage> {
//   TextEditingController dateTextEC = TextEditingController();

//   @override
//   void initState() {
//     dateTextEC.text = DateTime.now().toString();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         minimum: const EdgeInsets.all(20),
//         child: Center(
//             child: Column(
//           children: [
//             TextFormField(
//               controller: dateTextEC,
//               decoration: InputDecoration(
//                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//               ),
//               onTap: () async {
//                 DateTime? selectedDate = await showDatePicker(
//                     context: context, firstDate: DateTime(1999), lastDate: DateTime(2023));
//                 print("Selected Date =========================  ${selectedDate}");

//                 setState(() {
//                   dateTextEC.text = selectedDate.toString();
//                 });

//                 print("Text Field Date =========================  ${dateTextEC.text}");
//               },
//             ),
//             SizedBox(height: 40),
//             Text(
//               dateTextEC.text,
//               style: const TextStyle(color: Color.fromARGB(255, 255, 17, 0), fontSize: 30, fontWeight: FontWeight.bold),
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }