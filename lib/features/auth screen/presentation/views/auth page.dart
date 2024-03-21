import 'package:fcai/constants.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/default button.dart';
import '../../../../screens/Sign in Screen.dart';
import '../../../../screens/login screen.dart';
import 'widgets/auth body.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthBody()
    );
  }
}
