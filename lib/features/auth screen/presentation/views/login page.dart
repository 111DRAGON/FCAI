


import 'package:fcai/constants.dart';
import 'package:fcai/features/auth%20screen/presentation/views/widgets/login%20body.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/registration controller.dart';
import '../../../../core/widgets/default button.dart';
import '../../../../models/default Text Form Field.dart';
import '../../../../screens/Sign in Screen.dart';
import '../../../../screens/home page screen.dart';
import 'signup page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: LoginBody(),
    );
  }
}
