// import 'package:fcai/features/auth/presentation/views/login%20page.dart';
// import 'package:fcai/features/auth/presentation/views/widgets/auth%20divider%20line.dart';
// import 'package:fcai/features/auth/presentation/views/widgets/sign%20up.dart';
// import 'package:fcai/features/auth/presentation/views/widgets/warning%20snackbar.dart';
// import 'package:fcai/features/auth/presentation/views/widgets/weclome%20text.dart';
import 'package:fcai/features/auth%20screen/presentation/views/widgets/sign%20up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart.';
import 'package:get_storage/get_storage.dart';

import '../../../../constants.dart';
import '../../../../controller/registration controller.dart';
import '../../../../core/widgets/default button.dart';
import '../../../../models/default Text Form Field.dart';
import '../../../../screens/home page screen.dart';



class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SignupBody(),
    );
  }
}
