// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart.';
//
// import '../controller/registration controller.dart';
// import '../core/widgets/default button.dart';
// import '../models/default Text Form Field.dart';
// import '../models/default button.dart';
// import 'login screen.dart';
//
// class SignUpScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: SingleChildScrollView(
//             child: GetX<RegistrationController>(
//           init: RegistrationController(),
//           builder: (controller) {
//             return Form(
//               key: controller.formKey.value,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children:  [
//                       Text(
//                         "FCAI",
//                         style: TextStyle(
//                             fontSize: 54, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 40,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 70,
//                         height: 2,
//                         color: Colors.grey,
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             "WELCOME".tr,
//                             style: TextStyle(
//                               fontSize: 28,
//                               color: Get.isDarkMode
//                                   ? const Color.fromRGBO(253, 253, 253, 1.0)
//                                   : const Color.fromRGBO(1, 29, 33, 1.0),
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             "Back".tr,
//                             style: TextStyle(
//                               fontSize: 28,
//                               color: Get.isDarkMode
//                                   ? const Color.fromRGBO(253, 253, 253, 1.0)
//                                   : const Color.fromRGBO(1, 29, 33, 1.0),
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         width: 70,
//                         height: 2,
//                         color: Colors.grey,
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   DefaultTextFormField(
//                     //radius: 32,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return "user account can not be empty";
//                       }
//                       return null;
//                     },
//                     controller: controller.userController.value,
//                     type: TextInputType.emailAddress,
//                     labelText: "User Account".tr,
//                     prefixIcon: CupertinoIcons.person,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   DefaultTextFormField(
//                     //radius: 32,
//                     validator: (value) {
//                       if (value!.isEmpty || !value.contains("@")) {
//                         return "Email Address can not be empty";
//                       }
//                       return null;
//                     },
//                     controller: controller.emailController.value,
//                     type: TextInputType.emailAddress,
//                     labelText: "Email Address".tr,
//                     prefixIcon: Icons.email,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   DefaultTextFormField(
//                     //radius: 32,
//                     controller: controller.passwordController.value,
//                     type: TextInputType.emailAddress,
//                     labelText: "Password".tr,
//                     prefixIcon: Icons.lock,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return "Password can not be empty";
//                       }
//                       return null;
//                     },
//                    // suffixIcon: CupertinoIcons.eye,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   DefaultButton(
//                    // radius: 32,
//                     icon: Icons.person_add_alt_1,
//                     text: "Sign up".tr,
//                     color: const Color.fromRGBO(39, 104, 139, 1.0),
//                     onPressed: () async {
//                       if (controller.formKey.value.currentState!.validate()) {
//                         try {
//                           var auth = FirebaseAuth.instance;
//                           UserCredential user =
//                               await auth.createUserWithEmailAndPassword(
//                                   email: controller.emailController.value.text,
//                                   password:
//                                       controller.passwordController.value.text);
//                           Get.to(LoginScreen());
//                         } on FirebaseAuthException catch (ex) {
//                           if (ex.code == "weak-password") {
//                             Get.snackbar(
//                               'Warning',
//                               'weak password',
//                               icon: const Icon(
//                                 Icons.warning,
//                                 color: Colors.red,
//                               ),
//                               snackPosition: SnackPosition.BOTTOM,
//                             );
//                           } else if (ex.code == "email-already-in-use") {
//                             Get.snackbar(
//                               'Warning',
//                               'email already in use',
//                               icon: const Icon(
//                                 Icons.warning,
//                                 color: Colors.red,
//                               ),
//                               snackPosition: SnackPosition.BOTTOM,
//                             );
//                           }
//                           print(ex);
//                         }
//                       }
//                     },
//                   ),
//                   const SizedBox(
//                     height: 40,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "if you don't have account".tr,
//                         style: const TextStyle(
//                             color: Colors.black54,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16),
//                       ),
//                       TextButton(
//                           onPressed: () {
//                             Get.to(LoginScreen());
//                           },
//                           child: Text(
//                             ("click here".tr),
//                             style: const TextStyle(
//                                 color: Color(0xff26688B), fontSize: 16),
//                           ))
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//         ),
//       ),
//     ),
//     );
//   }
// }
