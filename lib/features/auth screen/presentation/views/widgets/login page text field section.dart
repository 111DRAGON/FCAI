import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../models/default Text Form Field.dart';
import '../../controller/auth controller.dart';

class LoginPageTextFieldSection extends StatelessWidget {
  const LoginPageTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<RegistrationController>(
      init: RegistrationController(),
      builder: (controller) {
        return Column(
          children: [
            DefaultTextFormField(
              //radius: 30,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email Address can't be empty";
                }
                return null;
              },
              controller: controller.loginEmailController.value,
              type: TextInputType.emailAddress,
              labelText: "Email address".tr,
              prefixIcon: Icons.email,
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultTextFormField(
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
              controller: controller.loginPasswordController.value,
              type: TextInputType.emailAddress,
              labelText: "Password".tr,
              prefixIcon: Icons.lock_outline,
              obscureText: controller.passwordVisibility.value,
              validator: (value) {
                if (value!.length < 7) {
                  return 'Password must be 7 characters or more';
                }
                return null;
              },
            ),
          ],
        );
      },
    );
  }
}
