// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller/Subject Registration Controller.dart';
// import '../models/default button.dart';
//
// class SubjectRegistrationScreen extends StatelessWidget {
//
//
//   //SubjectRegistrationController controller = SubjectRegistrationController();
//
//   //var completedHours = 3;
//   var currentSelectedHours=0;
//   var remindHours = 18;
//   List subjects = [];
//
//   @override
//   Widget build(BuildContext context) {
//     String args = ModalRoute.of(context)!.settings.arguments as String;
//     var students = FirebaseFirestore.instance.collection('courses').snapshots();
//     return Scaffold(
//       appBar: AppBar(
//         actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
//         centerTitle: true,
//         title: Text(
//           "Registration".tr,
//           style: const TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//         ),
//       ),
//       body: StreamBuilder(
//         stream: students,
//         builder: (context,snapshot){
//           if(snapshot.connectionState == ConnectionState.waiting){
//             return const Center(child: CircularProgressIndicator());
//           }
//           else{
//             return Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 3, color: Colors.black26),
//                 ),
//                 height: MediaQuery.of(context).size.height * .9,
//                 child: ListView.separated(
//                   itemCount: snapshot.data!.docs.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       color:Get.isDarkMode ? const Color.fromRGBO(49, 49, 49, 1) :  const Color.fromRGBO(
//                           252, 253, 253, 1.0),
//                       child: Padding(
//                           padding:
//                           const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
//                           child: SizedBox(
//
//                             height: 45,
//                             child: Row(
//                               children: [
//                                 Text(
//                                   snapshot.data!.docs[index]['code'],
//                                   style: const TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 18,
//                                 ),
//                                 Expanded(
//                                   child: SingleChildScrollView(
//                                     scrollDirection: Axis.horizontal,
//                                     child: Text(
//                                       snapshot.data!.docs[index]['name'],
//                                       style: const TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold,),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 18,
//                                 ),
//                                 Text(
//                                   snapshot.data!.docs[index]['hours'],
//                                   style: const TextStyle(
//
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 const SizedBox(
//                                   width: 10,
//                                 ),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       color: Colors.black26,
//                                       borderRadius: BorderRadius.circular(15),),
//                                   child: MaterialButton(
//                                       onPressed: () {
//                                        currentSelectedHours += int.parse(snapshot.data!.docs[index]['hours']);
//                                        remindHours -= int.parse(snapshot.data!.docs[index]['hours']);
//                                        subjects.add({
//                                         'code': snapshot.data!.docs[index]['code'],
//                                         'name': snapshot.data!.docs[index]['name'],
//                                         'hours': snapshot.data!.docs[index]['hours'],
//                                        });
//                                        print(subjects);
//                                         Get.defaultDialog(
//                                           title: "Selected Hours",
//                                           titleStyle: const TextStyle(
//                                               fontSize: 25,
//                                               fontWeight: FontWeight.w500,
//                                           ),
//                                           middleText: "Current Selected Hours     $currentSelectedHours \n Remind Hours      $remindHours",
//                                           middleTextStyle: const TextStyle(
//                                               fontWeight: FontWeight.w400,
//                                               fontSize: 20,
//                                           ),
//                                           textCancel: "Close",cancelTextColor: Colors.black,
//
//
//                                         );
//                                       },
//                                       child: const Icon(
//                                         Icons.add,
//
//                                       ),),
//                                 ),
//                               ],
//                             ),
//                           )),
//                     );
//                   },
//                   separatorBuilder: (BuildContext context, int index) {
//                     return const Divider(
//                       height: 2,
//                       color: Colors.black26,
//                       indent: 20,
//                       endIndent: 20,
//                       thickness: 2,
//                     );
//                   },
//                 ),
//               ),
//             );
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async{
//           if(!(currentSelectedHours == 0 )|| !(currentSelectedHours > 18)){
//             var a = await FirebaseFirestore.instance.collection('students').where('email',isEqualTo: args).get();
//             // List data = a.docs[0]['registered'];
//             a.docs.forEach((element) async{
//               await element.reference.update({
//                 'registered': FieldValue.delete(),
//                 'registered': subjects,
//               });
//             });
//           }
//           // showModalBottomSheet(
//           //   backgroundColor: Get.isDarkMode
//           //       ? const Color.fromRGBO(49, 49, 49, 1)
//           //       : const Color.fromRGBO(252, 253, 253, 1.0),
//           //   shape: RoundedRectangleBorder(
//           //     borderRadius: BorderRadius.circular(20),
//           //   ),
//           //   context: context,
//           //   builder: (context) {
//           //     return GetX<SubjectRegistrationController>(
//           //         init: SubjectRegistrationController(),
//           //         builder: (controller) {
//           //           return Column(
//           //             children: [
//           //               Padding(
//           //                 padding: const EdgeInsets.all(20.0),
//           //                 child: Container(
//           //                   decoration: BoxDecoration(
//           //                     border:
//           //                         Border.all(width: 3, color: Colors.black26),
//           //                     borderRadius: BorderRadius.circular(16),
//           //                   ),
//           //                   height: 350,
//           //                   child: ListView.separated(
//           //                     itemCount: controller.doneItem.value,
//           //                     itemBuilder: (context, index) {
//           //                       return controller.doneRegistrationRow();
//           //                     },
//           //                     separatorBuilder:
//           //                         (BuildContext context, int index) {
//           //                       return const Divider(
//           //                         height: 2,
//           //                         color: Colors.black26,
//           //                         indent: 20,
//           //                         endIndent: 20,
//           //                         thickness: 2,
//           //                       );
//           //                     },
//           //                   ),
//           //                 ),
//           //               ),
//           //               Padding(
//           //                 padding: const EdgeInsets.only(right: 20, left: 20),
//           //                 child: DefaultButton(
//           //                     onPressed: () {},
//           //                     text: "SAVE".tr,
//           //                     icon: Icons.save, color: const Color.fromRGBO(
//           //                     39, 104, 139, 1.0),
//           //                 ),
//           //               )
//           //             ],
//           //           );
//           //         });
//           //   },
//           // );
//         },
//         backgroundColor: Get.isDarkMode
//             ? const Color.fromRGBO(49, 49, 49, 1)
//             : const Color.fromRGBO(252, 253, 253, 1.0),
//         child: Text(
//           'DONE'.tr,
//         ),
//       ),
//     );
//   }
// }
