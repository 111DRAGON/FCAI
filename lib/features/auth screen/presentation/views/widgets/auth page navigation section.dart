import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/navigation.dart';
import '../../../../../core/widgets/default button.dart';
import '../login page.dart';
import '../signup page.dart';

class AuthPageNavigationSection extends StatelessWidget {
  const AuthPageNavigationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          DefaultButton(
            onPressed: () {
              CustomGetNavigation.getOff(page: const LoginPage());
            },
            text: "Login".tr,
            icon: Icons.login,
          ),
          const SizedBox(
            height: 20,
          ),
          DefaultButton(
            onPressed: () {
              CustomGetNavigation.getOff(page: const SignupPage());
            },
            text: "Sign up".tr,
            icon: Icons.person_add_alt_1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
