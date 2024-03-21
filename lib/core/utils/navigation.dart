
import 'package:fcai/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomGetNavigation{

  static void getTo({required Widget page, dynamic arguments}){

    Get.to(page,transition: kTransition,duration: kDuration,arguments: arguments);
  }

  static void getOff({required Widget page, dynamic arguments}){

    Get.offAll(page,transition: kTransition,duration: kDuration,arguments: arguments);
  }

}