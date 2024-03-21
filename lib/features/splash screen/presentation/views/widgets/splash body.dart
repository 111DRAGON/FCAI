import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key, required this.animation});

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: animation,
        child: SizedBox(
          height: 300,
          child: AspectRatio(
            aspectRatio: 1 / 2,
            child: Image.asset(kLogo),
          ),
        ),
      ),
    );
  }
}
