import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageItem extends StatelessWidget {
  const HomePageItem({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });

  final String text;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 50,
                height: 50,
                color: Get.isDarkMode
                    ? const Color.fromRGBO(252, 249, 249, 1.0)
                    : Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
