import 'package:flutter/material.dart';
import 'package:get/get.dart';




 showSnackBar({required String message}){
  return Get.snackbar(
    'Warning',
    message,
    icon: const Icon(
      Icons.warning,
      color: Colors.red,
    ),
    snackPosition: SnackPosition.BOTTOM,
  );
}