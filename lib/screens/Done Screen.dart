// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller/Subject Registration Controller.dart';
// import '../controller/registration controller.dart';
// import '../core/widgets/default button.dart';
// import '../models/default button.dart';
// import '../models/models.dart';
//
// class DoneScreen extends StatelessWidget {
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//   String args = ModalRoute.of(context)!.settings.arguments as String;
//
//    // List datasubj = ['IT122','CS231','IT44'];
//
//     //List subjects = [];
//
//     // List getData() {
//     //   List sub = [];
//     //   FirebaseFirestore.instance
//     //       .collection('students')
//     //       .get()
//     //       .then((QuerySnapshot querySnapshot) {
//     //
//     //     querySnapshot.docs.forEach((doc) {
//     //       sub.addAll(doc['registered']);
//     //     });
//     //     return sub;
//     //   });
//     //   // Return a default value to avoid returning null
//     //   return sub;
//     // }
//
//
//     // getData().then((List sub) {
//     //   data =sub ;
//     //   print('************************************');
//     //   print(sub);
//     //   print('*******************************************');// Process the data here
//     //});
//     //RegistrationController controller = RegistrationController();
//    // print('after: ${controller.registeration.value} +++++++++++++++++++++++++++++++++++++++++++');
//
//     Stream<QuerySnapshot<Map<String, dynamic>>> students = FirebaseFirestore.instance.collection('students').where('email',isEqualTo: args).snapshots();
//
//     return Scaffold(
//       appBar: AppBar(
//         actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
//         centerTitle: true,
//         title: const Text(
//           "Registered Course Materials",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: StreamBuilder(
//         stream: students,
//
//
//         builder: (context,snapshot){
//           if(snapshot.connectionState == ConnectionState.waiting){
//             return const Center(child: CircularProgressIndicator(),);
//           }
//           else{
//
//
//
//
//
//             // print('++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
//             // print(datasubj);
//             // print('**************************************');
//             // print(subjects);
//             // print('**************************************');
//
//             return Column(
//
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(width: 3, color: Colors.black26),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: ListView.separated(
//                         itemCount: snapshot.data!.docs[0]['registered'].length,
//                         itemBuilder: (context, index) {
//                           return  Container(
//                             color:Get.isDarkMode ? const Color.fromRGBO(49, 49, 49, 1) :  const Color.fromRGBO(252, 253, 253, 1.0),
//                             child: Padding(
//                                 padding:
//                                 const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
//                                 child: SizedBox(
//                                   height: 45,
//                                   child: Row(
//                                     children: [
//                                       Text(
//                                         snapshot.data!.docs[0]['registered'][index]['code'],
//                                         style: const TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         width: 18,
//                                       ),
//                                       Expanded(
//                                         child: SingleChildScrollView(
//                                           scrollDirection: Axis.horizontal,
//                                           child: Text(
//                                             snapshot.data!.docs[0]['registered'][index]['name'],
//                                             style: const TextStyle(
//
//                                                 fontSize: 18,
//                                                 fontWeight: FontWeight.bold,),
//                                           ),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         width: 18,
//                                       ),
//                                       Text(
//                                         snapshot.data!.docs[0]['registered'][index]['hours'],
//                                         style: const TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.bold,),
//                                       ),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       // Container(
//                                       //   decoration: BoxDecoration(
//                                       //       color: Colors.black26,
//                                       //       borderRadius: BorderRadius.circular(15)),
//                                       //   child: MaterialButton(
//                                       //       onPressed: () {},
//                                       //       child: const Icon(
//                                       //           Icons.exposure_minus_1
//                                       //
//                                       //       )),
//                                       // )
//                                     ],
//                                   ),
//                                 )),
//                           );
//                         },
//                         separatorBuilder: (BuildContext context, int index) {
//                           return const Divider(
//                             height: 2,
//                             color: Colors.black26,
//                             indent: 20,
//                             endIndent: 20,
//                             thickness: 2,
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 20, left: 20),
//                   child: DefaultButton(
//                     onPressed: () {}, text: "SAVE".tr, icon: Icons.save, color: Color.fromRGBO(
//                       38, 104, 139, 1.0),),
//                 )
//               ],
//             );
//           }
//
//         },
//       )
//     );
//   }
// }
