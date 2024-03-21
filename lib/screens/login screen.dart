// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart.';
//
// import '../controller/registration controller.dart';
// import '../core/widgets/default button.dart';
// import '../models/default Text Form Field.dart';
// import '../models/default button.dart';
// import 'Sign in Screen.dart';
// import 'home page screen.dart';
//
// class LoginScreen extends StatelessWidget {
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
//                       key: controller.formKey1.value,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                          const Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children:  [
//                               Text(
//                                 "FCAI",
//                                 style: TextStyle(
//                                     fontSize: 54, fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           SizedBox(
//                             width: double.infinity,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   width: 70,
//                                   height: 2,
//                                   color: Colors.grey,
//                                 ),
//                                 const SizedBox(
//                                   width: 20,
//                                 ),
//                                 Column(
//                                   children: [
//                                     Text(
//                                       "WELCOME".tr,
//                                       style: TextStyle(
//                                         fontSize: 28,
//                                         color: Get.isDarkMode
//                                             ? const Color.fromRGBO(
//                                                 253, 253, 253, 1.0)
//                                             : const Color.fromRGBO(
//                                                 1, 29, 33, 1.0),
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     Text(
//                                       "Back".tr,
//                                       style: TextStyle(
//                                         fontSize: 28,
//                                         color: Get.isDarkMode
//                                             ? const Color.fromRGBO(
//                                                 253, 253, 253, 1.0)
//                                             : const Color.fromRGBO(
//                                                 1, 29, 33, 1.0),
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                   width: 20,
//                                 ),
//                                 Container(
//                                   width: 70,
//                                   height: 2,
//                                   color: Colors.grey,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           DefaultTextFormField(
//                             //radius: 30,
//                             validator: (value) {
//                               if (value!.isEmpty || !value.contains("@")) {
//                                 return "Email Address can not be empty";
//                               }
//                               return null;
//                             },
//                             controller: controller.emailController1.value,
//                             type: TextInputType.emailAddress,
//                             labelText: "Email address".tr,
//                             prefixIcon: Icons.email,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           DefaultTextFormField(
//                               //radius: 32,
//                              // suffixIcon: CupertinoIcons.eye,
//                               controller: controller.passwordController1.value,
//                               type: TextInputType.emailAddress,
//                               labelText: "Password".tr,
//                               prefixIcon: Icons.lock_outline),
//
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           DefaultButton(
//                           //  radius: 32,
//                               icon:  Icons.login_outlined,
//                             text: "Login".tr,
//                             color: Color.fromRGBO(39, 104, 139, 1.0),
//                             onPressed: () async {
//                               if (controller.formKey1.value.currentState!
//                                   .validate()) {
//                                 try {
//                                   var auth = FirebaseAuth.instance;
//                                   UserCredential user =
//                                       await auth.signInWithEmailAndPassword(
//                                           email: controller
//                                               .emailController1.value.text,
//                                           password: controller
//                                               .passwordController1.value.text);
//
//                                   Get.to(HomePageScreen(),arguments: controller.emailController1.value.text);
//                                 } on FirebaseAuthException catch (ex) {
//                                   if (ex.code == "user-not-found") {
//                                     Get.snackbar(
//                                       'Warning',
//                                       'user is not found',
//                                       icon: const Icon(
//                                         Icons.warning,
//                                         color: Colors.red,
//                                       ),
//                                       snackPosition: SnackPosition.BOTTOM,
//                                     );
//                                   } else if (ex.code == "wrong-password") {
//                                     Get.snackbar(
//                                       'Warning',
//                                       'wrong password',
//                                       icon: const Icon(
//                                         Icons.warning,
//                                         color: Colors.red,
//                                       ),
//                                       snackPosition: SnackPosition.BOTTOM,
//                                     );
//                                   }
//                                   print(ex);
//                                 }
//                               }
//                             },
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           DefaultButton(
//                             icon: Icons.person_add_alt_1,
//                             //radius: 32,
//                               text: "ٌRegister".tr,
//                               color:  Colors.black54,
//                               onPressed:() {
//           Get.to(SignUpScreen());
//         },
//                           ),
//
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Forget Password?".tr,
//                                 style: const TextStyle(
//                                     color: Colors.black54,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16),
//                               ),
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     ("click here".tr),
//                                     style: const TextStyle(
//                                         color: Color(0xff26688B), fontSize: 16),
//                                   ))
//                             ],
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
