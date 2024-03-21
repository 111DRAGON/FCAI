import 'package:fcai/core/utils/user%20data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../admin fetaures/data entry/presentation/views/data entry page.dart';
import '../../../../constants.dart';
import '../../../../core/utils/navigation.dart';
import '../../../home screen/presentation/views/home page.dart';
import '../views/widgets/warning snackbar.dart';

class RegistrationController extends GetxController {
  RxBool passwordVisibility = true.obs;
  RxList registeration = [].obs;
  RxBool isAdmin = false.obs;

  Rx<GlobalKey<FormState>> signupFormKey = GlobalKey<FormState>().obs;
  Rx<GlobalKey<FormState>> loginFormKey = GlobalKey<FormState>().obs;

  Rx<TextEditingController> usernameController = TextEditingController().obs;
  Rx<TextEditingController> signupEmailController = TextEditingController().obs;
  Rx<TextEditingController> signupPasswordController =
      TextEditingController().obs;

  Rx<TextEditingController> loginEmailController = TextEditingController().obs;
  Rx<TextEditingController> loginPasswordController =
      TextEditingController().obs;

  void loginMethod() async {
    if (loginFormKey.value.currentState!.validate()) {
      try {
        UserCredential user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: loginEmailController.value.text,
                password: loginPasswordController.value.text);
        setup(user.user!.email!);
        loginEmailController.value.clear();
        loginPasswordController.value.clear();

        CustomGetNavigation.getTo(
          page: isAdmin.value ? DataEntryPage():HomePage(),
          arguments: loginEmailController.value.text,
        );
      } on FirebaseAuthException catch (ex) {
        if (ex.code == "user-not-found") {
          showSnackBar(message: 'Email not found please try again!');
        } else if (ex.code == "wrong-password") {
          showSnackBar(message: 'Wrong password');
        }
      } catch (ex) {
        showSnackBar(message: ex.toString());
      }
    }
  }

  void signupMethod() async {
    if (signupFormKey.value.currentState!.validate()) {
      try {
        UserCredential user =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: signupEmailController.value.text,
          password: signupPasswordController.value.text,
        );

        CustomGetNavigation.getTo(
          page: isAdmin.value ? DataEntryPage():HomePage(),

          arguments: signupEmailController.value.text,

        );
        setup(user.user!.email!);
        signupEmailController.value.clear();
        signupPasswordController.value.clear();
      } on FirebaseAuthException catch (ex) {
        if (ex.code == "weak-password") {
          showSnackBar(message: 'Weak password');
        } else if (ex.code == "email-already-in-use") {
          showSnackBar(message: 'Email already in use');
        }
      } catch (ex) {
        showSnackBar(message: ex.toString());
      }
    }
  }
}
