// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class DefaultContainerHomePage extends StatelessWidget {
//   DefaultContainerHomePage({
//     required this.color,
//     required this.image,
//     required this.text,
//      required this.radius,
// });
//   Color color = Colors.white;
//       double radius = 16;
//    late String text;
//    late String image;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: color,
//         border: Border.all(color: Colors.black26),
//         borderRadius: BorderRadius.circular(radius),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               image,
//               width: 50,
//               height: 50,
//               color: Get.isDarkMode
//                   ? const Color.fromRGBO(252, 249, 249, 1.0)
//                   : Colors.black,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               text,
//               style: const TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
