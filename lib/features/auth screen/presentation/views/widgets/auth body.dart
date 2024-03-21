import 'package:fcai/core/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/default button.dart';
import '../login page.dart';
import '../signup page.dart';
import 'auth page navigation section.dart';


class AuthBody extends StatelessWidget {
  const AuthBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: AspectRatio(
                aspectRatio: 1 / 2,
                child: Image.asset(
                  kLogo,
                ),
              ),
            ),
            const Text(
              "FCAI  BSU",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const AuthPageNavigationSection(),
          ],
        ),
      ),
    );
  }
}
