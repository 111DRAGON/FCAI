// import 'package:flutter/material.dart';
// import 'package:get/get.dart.';
//
// import '../controller/registration controller.dart';
// import '../core/widgets/default button.dart';
// import '../models/default Text Form Field.dart';
// import '../models/default button.dart';
//
// class ComplaintsScreen extends StatelessWidget {
//   var complaintsTypeController = TextEditingController();
//   var descriptionController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: GetX<RegistrationController>(
//             init: RegistrationController(),
//             builder: (controller) {
//               return Center(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: SingleChildScrollView(
//                     child: Form(
//                       key: controller.formKey.value,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "WELCOME".tr,
//                             style: const TextStyle(
//                               fontSize: 40,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             "Enter your complaints".tr,
//                             style: const TextStyle(
//                               fontSize: 30,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           DefaultTextFormField(
//                               controller: complaintsTypeController,
//                               type: TextInputType.emailAddress,
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return "Complaints Type can not be empty";
//                                 }
//                                 return null;
//                               },
//                               labelText: "Complaints Type".tr,
//                             prefixIcon:Icons.text_fields,),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           DefaultTextFormField(
//                              // maxLine: 6,
//                               controller: descriptionController,
//                               type: TextInputType.emailAddress,
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return "Description can not be empty";
//                                 }
//                                 return null;
//                               },
//                               labelText: "Description".tr,
//                             prefixIcon:  Icons.description,),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           DefaultButton(
//                               onPressed: () {
//                                 print(descriptionController);
//                                 print(complaintsTypeController);
//                               },
//                               text: "Submit".tr,
//                               icon: Icons.send,
//                             color: Color.fromRGBO(39, 104, 139, 1.0),),
//                           const SizedBox(
//                             height: 40,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             }));
//   }
// }
