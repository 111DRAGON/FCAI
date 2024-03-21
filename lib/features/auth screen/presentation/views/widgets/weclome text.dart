import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthWelcomeText extends StatelessWidget {
  const AuthWelcomeText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      style: TextStyle(
        fontSize: 28,
        color: Get.isDarkMode
            ? const Color.fromRGBO(253, 253, 253, 1.0)
            : const Color.fromRGBO(1, 29, 33, 1.0),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
