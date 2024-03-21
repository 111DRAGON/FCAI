import 'package:flutter/material.dart';

import '../../../models/top students model.dart';


class TopStudentListViewItem extends StatelessWidget {
  const TopStudentListViewItem({super.key,required this.model,});

  final TopStudentModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text(
        //   snapshot.data!.docs[0]['id'],
        //   style: const TextStyle(
        //       fontSize: 20, fontWeight: FontWeight.bold),
        // ),
        // const SizedBox(
        //   width: 20,
        // ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              model.name,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          model.gpa.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(

          model.department,
          style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold,),
        ),
      ],
    );
  }
}
