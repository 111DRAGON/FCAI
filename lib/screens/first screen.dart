
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'second screen.dart';
//
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FutureBuilder(
//       future: Future.delayed(
//         const Duration(seconds: 2),
//       ),
//       builder: (context, snapshot) {
//         return snapshot.connectionState == ConnectionState.waiting
//             ? Center(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           'image/logo2.png',
//                           width: 180,
//                           height: 180,
//                         ),
//                         const SizedBox(
//                           height: 40,
//                         ),
//                         Text(
//                           "WELCOME".tr,
//                           style: const TextStyle(
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 150,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             : SecondScreen();
//       },
//     ));
//   }
// }
