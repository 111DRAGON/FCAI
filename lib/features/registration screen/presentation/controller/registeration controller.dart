
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesRegistrationController extends GetxController {
  // var registrationCount = 20.obs;
  // var scaffoldKey = GlobalKey<ScaffoldState>().obs;
  // bool isBottenSheetShon = false;
  // var doneItem = 20.obs;
  // var subjectCode = "CS311";
  // var subjectName = "SOFT COMPUTING ";
  RxInt currentSelectedHours=0.obs;
  RxInt remindHours = 18.obs;
  RxList<Map> courses = <Map>[].obs;
  RxList<int> selectedCourses = <int>[].obs;

  // registerRow() {
  //
  // }
  //
  // doneRegistrationRow() {
  //   return;
  // }
}
