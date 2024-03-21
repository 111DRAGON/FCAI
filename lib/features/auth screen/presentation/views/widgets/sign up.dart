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
import '../login page.dart';
import 'auth divider line.dart';
import 'signup page text field section.dart';
import 'warning snackbar.dart';
import 'weclome text.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    RegistrationController controller = Get.put(RegistrationController());
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Obx(()=>Form(
          key: controller.signupFormKey.value,
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
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AuthDividerLine(),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      AuthWelcomeText(text: 'Welcome'),
                      AuthWelcomeText(text: 'Back'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  AuthDividerLine(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SignupPageTextFieldSection(),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: controller.isAdmin.value,
                title: const Text('Are you an admin ?'),
                onChanged: (val) {
                  controller.isAdmin.value = !(controller.isAdmin.value);
                },
              ),
              const SizedBox(height: 20),
              DefaultButton(
                // radius: 32,
                icon: Icons.person_add_alt_1,
                text: "Sign up".tr,
                color: kButtonColor,
                onPressed: controller.signupMethod,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "if you don't have account".tr,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const LoginPage(),
                          transition: kTransition, duration: kDuration);
                    },
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
        )),
      ),
    );
  }
}
