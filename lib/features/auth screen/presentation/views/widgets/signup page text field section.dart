import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../models/default Text Form Field.dart';
import '../../controller/auth controller.dart';

class SignupPageTextFieldSection extends StatelessWidget {
  const SignupPageTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<RegistrationController>(
      init: RegistrationController(),
      builder: (controller) {
        return Column(
          children: [
            DefaultTextFormField(
              //radius: 32,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Username can not be empty";
                }
                return null;
              },
              controller: controller.usernameController.value,
              type: TextInputType.emailAddress,
              labelText: "User Account".tr,
              prefixIcon: Icons.person,
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultTextFormField(
              //radius: 32,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email Address can't be empty";
                }
                return null;
              },
              controller: controller.signupEmailController.value,
              type: TextInputType.emailAddress,
              labelText: "Email Address".tr,
              prefixIcon: Icons.email,
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultTextFormField(
              validator: (value) {
                if (value!.length < 7) {
                  return 'Password must be 7 characters or more';
                }
                return null;
              },
              //radius: 32,
              suffixIcon: IconButton(
                onPressed: () {
                  controller.passwordVisibility.value =
                      !controller.passwordVisibility.value;
                },
                icon: Icon(
                  controller.passwordVisibility.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
              controller: controller.signupPasswordController.value,
              type: TextInputType.emailAddress,
              labelText: "Password".tr,
              prefixIcon: Icons.lock_outline,
              obscureText: controller.passwordVisibility.value,
            ),
          ],
        );
      },
    );
  }
}
