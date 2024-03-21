// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller/Top Students Controller.dart';
//
//
// class TopStudentsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "Top Student".tr,
//           style: const TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: SizedBox(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height * .9,
//           child: GetX<TopStudentsController>(
//             init: TopStudentsController(),
//             builder: (controller) {
//               return Column(
//                 children: [
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     controller.men.value,
//                     style: const TextStyle(
//                         fontWeight: FontWeight.bold, fontSize: 25),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           border: Border.all(width: 3, color: Colors.black26),
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: ListView.separated(
//                           itemCount: 20,
//                           itemBuilder: (context, index) {
//                             return controller.topStudentsRow();
//                           },
//                           separatorBuilder: (BuildContext context, int index) {
//                             return const Divider(
//                               height: 2,
//                               color: Colors.black26,
//                               indent: 20,
//                               endIndent: 20,
//                               thickness: 2,
//                             );
//                           },
//                         ),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     controller.women.value,
//                     style: const TextStyle(
//                         fontWeight: FontWeight.bold, fontSize: 25),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           border: Border.all(width: 3, color: Colors.black26),
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: ListView.separated(
//                           itemCount: 20,
//                           itemBuilder: (context, index) {
//                             return controller.topStudentsRow();
//                           },
//                           separatorBuilder: (BuildContext context, int index) {
//                             return const Divider(
//                               height: 2,
//                               color: Colors.black26,
//                               indent: 20,
//                               endIndent: 20,
//                               thickness: 2,
//                             );
//                           },
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             },
//           )),
//     );
//   }
// }
