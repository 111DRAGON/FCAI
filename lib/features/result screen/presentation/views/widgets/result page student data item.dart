import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPageStudentDataItem extends StatelessWidget {
  const ResultPageStudentDataItem(
      {super.key, required this.icon, required this.value});

  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(icon,size: 30,),
        const SizedBox(
          width: 18,
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
