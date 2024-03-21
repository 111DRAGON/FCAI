// import 'package:flutter/material.dart';
//
// class DefaultButton extends StatelessWidget {
//   const DefaultButton({super.key,
//     required this.icon,
//     //required this.radius,
//     required this.text,
//      this.color,
//     required this.onPressed,
//     // this.height,
//     // this.width,
//   });
//   final String text;
//   final Color? color;
//   //final double radius;
//   final IconData icon;
//   //final double? width;
//   //final double? height;
//   final Function() onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return // ClipRRect(
//     // borderRadius: BorderRadius.circular(16),
//       // child: Container(
//       //   decoration: BoxDecoration(
//       //
//       //     borderRadius: BorderRadius.circular(16 ),
//       //     color: color ?? const Color(0xff26688B),
//       //   ),
//
//          ElevatedButton(
//           onPressed: onPressed,
//           style: ButtonStyle(
//               shape: MaterialStateProperty.all(
//                 RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16.0),
//                 ),
//               ),
//             backgroundColor: MaterialStateProperty.all( color ?? const Color(0xff26688B),)
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   text,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       color: Colors.white),
//                 ),
//                 Icon(
//                   icon,
//                   color: Colors.white,
//                 ),
//               ],
//             ),
//           ),
//        // ),
//       //),
//     );
//   }
// }
