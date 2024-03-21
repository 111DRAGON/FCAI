// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:share_plus/share_plus.dart';
//
// class OfferItem extends StatelessWidget {
//   const OfferItem(
//       {Key? key,
//         required this.image,
//         required this.title,
//         this.isExpires = false})
//       : super(key: key);
//   final String image;
//   final String title;
//   final bool isExpires;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       color: context.theme.hintColor,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 100,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 borderRadius: const BorderRadius.only(
//                   topRight: Radius.circular(10),
//                   topLeft: Radius.circular(10),
//                 ),
//                 image: DecorationImage(
//                   image: AssetImage(image),
//                   fit: BoxFit.cover,
//                 )),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         title,
//                         style: const TextStyle(
//                           fontSize: 16,
//                           height: 1.2,
//                           color: Colors.grey,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Share.share(title);
//                         },
//                         child: Container(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 12, vertical: 5),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                   "image/share.png",
//                                   width: 32,
//                                   height: 32,
//                                   color: const Color(0xff26688B),
//                                 ),
//                                 const SizedBox(
//                                   width: 5,
//                                 ),
//                                 const Text(
//                                   "Share Event",
//                                   style: TextStyle(
//                                     color: Color(0xff26688B),
//                                   ),
//                                 )
//                               ],
//                             )),
//                       )
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       isExpires ? "Event\nExpired" : "Join\nEvent",
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         height: 1.2,
//                         fontSize: 16,
//                         color: Colors.grey,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 7,
//                     ),
//                     InkWell(
//                       onTap: isExpires ? null : () {},
//                       child: CircleAvatar(
//                         radius: 26,
//                         backgroundColor:
//                         isExpires ? Colors.red : const Color(0xff26688B),
//                         child: CircleAvatar(
//                           radius: 23,
//                           backgroundColor: context.theme.hintColor,
//                           child: Text(
//                             isExpires ? "Expired" : "Join",
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                               fontSize: 12,
//                               color: Colors.grey,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
