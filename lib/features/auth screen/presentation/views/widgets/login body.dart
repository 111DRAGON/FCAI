import 'package:fcai/core/utils/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants.dart';
import '../../../../../controller/registration controller.dart';
import '../../../../../core/widgets/default button.dart';
import '../../../../../models/default Text Form Field.dart';
import '../../../../../screens/home page screen.dart';
import '../../../../home screen/presentation/views/home page.dart';
import '../../controller/auth controller.dart';
import 'auth divider line.dart';
import 'login page text field section.dart';
import 'warning snackbar.dart';
import 'weclome text.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    RegistrationController controller = Get.put(RegistrationController());
    return Obx(() => Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: controller.loginFormKey.value,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FCAI",
                        style: TextStyle(
                          fontSize: 54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AuthDividerLine(),
                      SizedBox(width: 20),
                      AuthWelcomeText(text: 'Welcome'),
                      SizedBox(width: 20),
                      AuthDividerLine(),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const LoginPageTextFieldSection(),
                  const SizedBox(height: 20),
                  CheckboxListTile(
                    value: controller.isAdmin.value,
                    title: const Text('Are you an admin ?'),
                    onChanged: (val) {
                      controller.isAdmin.value = !(controller.isAdmin.value);
                    },
                  ),
                  const SizedBox(height: 20),
                  DefaultButton(
                    icon: Icons.login_outlined,
                    text: "Login".tr,
                    onPressed: controller.loginMethod,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forget Password?".tr,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          ("click here".tr),
                          style: const TextStyle(
                            color: kButtonColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
