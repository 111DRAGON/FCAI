// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:marquee/marquee.dart';
//
//
// import '../core/widgets/default button.dart';
// import '../models/default button.dart';
// import 'Sign in Screen.dart';
// import 'login screen.dart';
//
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               Image.asset(
//                 'image/logo.png',
//                 width: 180,
//                 height: 180,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "FCAI  BSU ",
//                 style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               DefaultButton(
//                   onPressed: () {
//                     Get.to(LoginScreen());
//                   },
//                   text: "Login".tr,
//                   icon: Icons.login, color: Color.fromRGBO(39, 104, 139, 1.0),),
//               const SizedBox(
//                 height: 20,
//               ),
//               DefaultButton(
//                   onPressed: () {
//                     Get.to(SignUpScreen());
//                   },
//                   text: "Sign up".tr,
//                   icon: Icons.person_add_alt_1, color: Color.fromRGBO(
//                   39, 104, 139, 1.0),)
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
