// import 'package:fcai/features/splash%20screen/presentation/views/splash%20page.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart.';
//
// import '../locale/locale settings.dart';
// import '../models/card item.dart';
// import '../models/default Drawer.dart';
// import '../models/defaultContainerHomePage.dart';
// import '../theme/theme services.dart';
// import 'Done Screen.dart';
// import 'SubjectRegistration screen.dart';
// import 'Top students screen.dart';
// import 'about System.dart';
// import 'complaints screen.dart';
// import 'first screen.dart';
// import 'grade statement screen.dart';
// import 'result screen.dart';
//
// class HomePageScreen extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     String args = ModalRoute.of(context)!.settings.arguments as String;
//
//
//
//
//
//     MyLocaleController controllerLang = Get.find();
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "FCAI BSU",
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               ThemeService().switchTheme();
//             },
//             icon: const Icon(Icons.brightness_4_outlined),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
//               child: OfferItem(
//                 title: "A Trial of Reading The Human Brain",
//                 image: "image/brain.jpg",
//                 isExpires: false,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Text(
//                 "Our Services".tr,
//                 style: const TextStyle(
//                     color: Color(0xff26688B),
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(25),
//               child: GridView.count(
//                 shrinkWrap: true,
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//                 childAspectRatio: 1.3,
//                 children: [
//                   GestureDetector(
//                     child: DefaultContainerHomePage(
//                       image: "image/books.png",
//                       text: "Registration".tr,
//                       color: context.theme.hintColor,
//                       radius: 16,
//                     ),
//                     onTap: () {
//                       Get.to(SubjectRegistrationScreen(),arguments: args);
//                     },
//                   ),
//                   GestureDetector(
//                       child: DefaultContainerHomePage(
//                         image: "image/student-grades.png",
//                         text: "Result".tr,
//                         color: context.theme.hintColor,
//                         radius: 16,
//                       ),
//                       onTap: () {
//                         Get.to(ResultScreen(),arguments: args);
//                       }),
//                   GestureDetector(
//                       child: DefaultContainerHomePage(
//                         image: "image/school.png",
//                         text: "Top Student".tr,
//                         color: context.theme.hintColor,
//                         radius: 16,
//                       ),
//                       onTap: () {
//                         {
//                           Get.to(TopStudentsScreen());
//                         }
//                       }),
//                   GestureDetector(
//                       child: DefaultContainerHomePage(
//                         image: "image/done.png",
//                         text: "Done".tr,
//                         color: context.theme.hintColor,
//                         radius: 16,
//                       ),
//                       onTap: () {
//                         {
//                           Get.to(DoneScreen(),arguments: args);
//                         }
//                       }),
//                   GestureDetector(
//                       child: DefaultContainerHomePage(
//                         image: "image/money.png",
//                         text: "About System".tr,
//                         color: context.theme.hintColor,
//                         radius: 16,
//                       ),
//                       onTap: () {
//                         {
//                           Get.to(AboutSystem());
//                         }
//                       }),
//                   GestureDetector(
//                       child: DefaultContainerHomePage(
//                         image: "image/graduation-hat.png",
//                         text: "Grade Statement".tr,
//                         color: context.theme.hintColor,
//                         radius: 16,
//                       ),
//                       onTap: () {
//                         {
//                           Get.to(GradeStatementScreen());
//                         }
//                       }),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       drawerEdgeDragWidth: 50,
//       drawer: DefaultDrawer(
//         changeToArabicLanguage: () {
//           controllerLang.changeLange("ar");
//         },
//         changeToEnglishLanguage: () {
//           controllerLang.changeLange("en");
//         },
//         complaints: () {
//          // Get.to(ComplaintsScreen());
//         },
//         logOut: () {
//           Get.to(SplashPage());
//         },
//         accountEmail: "Ahmed Ibrahim",
//         accountName: args,
//       ),
//     );
//   }
// }
