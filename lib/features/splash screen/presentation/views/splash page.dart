import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../screens/second screen.dart';

import '../../../auth screen/presentation/views/auth page.dart';
import 'widgets/splash body.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(animation: animation),
    );
  }

  void initializeAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.ease,
    );
    animationController.forward().then((_) {
      Get.off(
        AuthPage(),
        transition: Transition.fade,
        duration: const Duration(milliseconds: 1500),
      );
    });
  }
}
