// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:fcai/core/utils/user%20data.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller/result controller.dart';
//
//
//
// class ResultScreen extends StatelessWidget {
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   loadData();
//   // }
//  // String d = ;
//   //String args = 'swilam12@gmail.com';
//   List<QueryDocumentSnapshot> data = [];
//   Future<QuerySnapshot> querySnapshot = FirebaseFirestore.instance
//       .collection('students')
//       .where('email', isEqualTo: getIt.get<String>())
//       .get();
//
//   // loadData()async{
//   //   // d = await FirebaseFirestore.instance.collection('students').where('email' ,isEqualTo: args).get();
//   //   //data.addAll(d.docs);
//   //   print(data);
//   //   setState(() {
//   //
//   //   });
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     //String args = ModalRoute.of(context)!.settings.arguments as String;
//
//     //final Stream<QuerySnapshot> reference =
//     // FirebaseFirestore.instance.collection('students').where('email',isEqualTo: args).snapshots();
//
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(
//             "Result".tr,
//             style: const TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         body: FutureBuilder(
//             future: querySnapshot,
//             builder: (context, snapshot) {
//               // return Text(snapshot.data!.docs[0]['completed_hours'].toString());
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else {
//                 return Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Get.isDarkMode
//                                     ? const Color.fromRGBO(
//                                     59, 59, 59, 1.0)
//                                     : const Color.fromRGBO(
//                                     188, 188, 188, 1.0),
//                                 offset: const Offset(5, 5))
//                           ],
//                           borderRadius: BorderRadius.circular(16),
//                           color: Get.isDarkMode
//                               ? const Color.fromRGBO(49, 49, 49, 1)
//                               : const Color.fromRGBO(38, 103, 138, 1.0),
//                           // color: Color.fromRGBO(38, 103, 138, 1.0),
//                         ),
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   top: 10,
//                                   bottom: 10,
//                                   right: 10,
//                                   left: 20),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     "NAME".tr,
//                                     style: const TextStyle(
//                                       fontSize: 28,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 18,
//                                   ),
//                                   Expanded(
//                                     child: Text(
//                                       snapshot.data!.docs[0]['name'].toString(),
//                                       style: const TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const Divider(
//                               height: 2,
//                               color: Colors.black26,
//                               indent: 20,
//                               endIndent: 20,
//                               thickness: 2,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   top: 10,
//                                   bottom: 10,
//                                   right: 10,
//                                   left: 10),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     "SPECIALTY".tr,
//                                     style: const TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 18,
//                                   ),
//                                   Expanded(
//                                     child: Text(
//                                       snapshot.data!.docs[0]
//                                       ['department'].toString(),
//                                       style: const TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 30,
//                                   ),
//                                   Text(
//                                     "Code".tr,
//                                     style: const TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 17,
//                                   ),
//                                   Expanded(
//                                     child: Text('',
//                                       //snapshot.data!.docs[0]['id'].toString(),
//                                       style: const TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 17,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const Divider(
//                               height: 2,
//                               color: Colors.black26,
//                               indent: 20,
//                               endIndent: 20,
//                               thickness: 2,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   top: 10,
//                                   bottom: 10,
//                                   right: 10,
//                                   left: 10),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     "PERCENTAGE".tr,
//                                     style: const TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 18,
//                                   ),
//                                   Expanded(
//                                     child: Text(
//                                       snapshot.data!.docs[0]['percent']
//                                           .toString(),
//                                       style: const TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 30,
//                                   ),
//                                   Text(
//                                     "GPA".tr,
//                                     style: const TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 20,
//                                   ),
//                                   Expanded(
//                                     child: Text(
//                                       snapshot.data!.docs[0]['gpa']
//                                           .toString(),
//                                       style: const TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const Divider(
//                               height: 2,
//                               color: Colors.black26,
//                               indent: 20,
//                               endIndent: 20,
//                               thickness: 2,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   top: 10,
//                                   bottom: 10,
//                                   right: 10,
//                                   left: 10),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     "COMPLETED HOUR".tr,
//                                     style: const TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 20,
//                                   ),
//                                   Expanded(
//                                     child: Text(
//                                       snapshot.data!
//                                           .docs[0]['completed_hours']
//                                           .toString(),
//                                       style: const TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Expanded(
//                       child: ListView.separated(
//                         itemCount:2,
//                         //snapshot.data!.docs[0]['result'].length,
//                         itemBuilder: (BuildContext context, int index) {
//                           List results = snapshot
//                               .data!.docs[0]['result'].values
//                               .toList();
//                           List names = snapshot
//                               .data!.docs[0]['result'].keys
//                               .toList();
//
//                           return Column(
//                             children: [
//                               Padding(
//                                   padding: const EdgeInsets.only(
//                                       bottom: 20,
//                                       right: 20,
//                                       top: 20,
//                                       left: 20),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: Get.isDarkMode
//                                           ? const Color.fromRGBO(
//                                           49, 49, 49, 1)
//                                           : Colors.white,
//                                       border: Border.all(
//                                           width: 3,
//                                           color: Colors.black26),
//                                       borderRadius:
//                                       BorderRadius.circular(16),
//                                     ),
//                                     height: 60,
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(
//                                           top: 10,
//                                           bottom: 10,
//                                           right: 5,
//                                           left: 5),
//                                       // child: Row(
//                                       //   children: [
//                                       //     const SizedBox(
//                                       //       width: 10,
//                                       //     ),
//                                       //     Text(
//                                       //       "PERCENTAGE".tr,
//                                       //       style: const TextStyle(
//                                       //         fontSize: 18,
//                                       //         fontWeight: FontWeight.bold,
//                                       //       ),
//                                       //     ),
//                                       //     const SizedBox(
//                                       //       width: 18,
//                                       //     ),
//                                       //     const Expanded(
//                                       //       child: Text(
//                                       //         "80%",
//                                       //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                                       //       ),
//                                       //     ),
//                                       //     const SizedBox(
//                                       //       width: 30,
//                                       //     ),
//                                       //     Expanded(
//                                       //       child: Text(
//                                       //         "GPA".tr,
//                                       //         style: const TextStyle(
//                                       //           fontSize: 20,
//                                       //           fontWeight: FontWeight.bold,
//                                       //         ),
//                                       //       ),
//                                       //     ),
//                                       //     const SizedBox(
//                                       //       width: 20,
//                                       //     ),
//                                       //     const Expanded(
//                                       //       child: Text(
//                                       //         "3.00",
//                                       //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                                       //       ),
//                                       //     ),
//                                       //   ],
//                                       // ),
//                                       child: Row(
//                                         children: [
//                                           Expanded(
//                                             child: Text(
//                                                names[index],
//                                               textAlign: TextAlign.center,
//                                               style: const TextStyle(
//                                                   fontWeight:
//                                                   FontWeight.bold,
//                                                   fontSize: 30),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   )),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     right: 20, left: 20, bottom: 20),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                         width: 3, color: Colors.black26),
//                                     borderRadius:
//                                     BorderRadius.circular(16),
//                                     color: Get.isDarkMode
//                                         ? const Color.fromRGBO(
//                                         49, 49, 49, 1)
//                                         : const Color.fromRGBO(
//                                         250, 251, 252, 1.0),
//                                   ),
//                                   height: 400,
//                                   child: ListView.separated(
//                                     itemCount: results[index].length,
//                                     itemBuilder: (context, i) {
//                                       return Padding(
//                                           padding: const EdgeInsets.only(
//                                               top: 10,
//                                               bottom: 10,
//                                               right: 10,
//                                               left: 10),
//                                           child: SizedBox(
//                                             height: 45,
//                                             child: Row(
//                                               children: [
//                                                 Text(
//                                                   results[index][i]
//                                                       ['code'].toString(),
//                                                  // snapshot.data!.docs[0]['result'].values.toList()[index][i]['code'],
//                                                   style: const TextStyle(
//                                                     fontSize: 18,
//                                                     fontWeight:
//                                                     FontWeight.bold,
//                                                   ),
//                                                 ),
//                                                 const SizedBox(
//                                                   width: 18,
//                                                 ),
//                                                 Expanded(
//                                                   child:
//                                                   SingleChildScrollView(
//                                                     scrollDirection:
//                                                     Axis.horizontal,
//                                                     child: Text(
//                                                       results[index][i]
//                                                           ['name'].toString(),
//                                                       style:
//                                                       const TextStyle(
//                                                         fontSize: 18,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 const SizedBox(
//                                                   width: 18,
//                                                 ),
//                                                 Text(
//                                                   results[index][i]
//                                                       ['grade'].toString(),
//                                                   style: const TextStyle(
//                                                     fontSize: 18,
//                                                     fontWeight:
//                                                     FontWeight.bold,
//                                                   ),
//                                                 ),
//                                                 const SizedBox(
//                                                   width: 18,
//                                                 ),
//                                                 Text(
//                                                   results[index][i]
//                                                       ['hours'].toString(),
//                                                   style: const TextStyle(
//                                                       fontSize: 18,
//                                                       fontWeight:
//                                                       FontWeight
//                                                           .bold),
//                                                 ),
//                                               ],
//                                             ),
//                                           ));
//                                     },
//                                     separatorBuilder: (context, index) {
//                                       return const Divider(
//                                         height: 2,
//                                         color: Colors.black26,
//                                         indent: 20,
//                                         endIndent: 20,
//                                         thickness: 2,
//                                       );
//                                     },
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           );
//                         },
//                         separatorBuilder:
//                             (BuildContext context, int index) {
//                           return const Divider(
//                             height: 20,
//                             color: Colors.black26,
//                             indent: 20,
//                             endIndent: 20,
//                             thickness: 5,
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 );
//               }
//             }));
//   }
// }
