import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fcai/features/result%20screen/models/student%20data%20model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'result page student data divider.dart';
import 'result page student data item.dart';


class ResultPageStudentDataSection extends StatelessWidget {
  const ResultPageStudentDataSection({super.key,required this.studentData,});
  final StudentData studentData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Get.isDarkMode
                  ? const Color.fromRGBO(
                  59, 59, 59, 1.0)
                  : const Color.fromRGBO(
                  188, 188, 188, 1.0),
              offset: const Offset(5, 5),)
          ],
          borderRadius: BorderRadius.circular(16),
          color: Get.isDarkMode
              ? const Color.fromRGBO(49, 49, 49, 1)
              : const Color.fromRGBO(38, 103, 138, 1.0),

        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child:ResultPageStudentDataItem(icon: Icons.person,value: studentData.name),
            ),
            const ResultPageStudentDataDivider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ResultPageStudentDataItem(icon: Icons.business,value: studentData.department,),

                  ResultPageStudentDataItem(icon: Icons.credit_card,value: studentData.code,),
                ],
              ),
            ),
            const ResultPageStudentDataDivider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ResultPageStudentDataItem(icon: Icons.percent,value: studentData.percent.toString(),),

                  ResultPageStudentDataItem(icon: Icons.school,value: studentData.gpa.toString(),),
                ],
              ),
            ),
            const ResultPageStudentDataDivider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ResultPageStudentDataItem(icon: Icons.done,value: studentData.completedHours.toString(),),
            ),
          ],
        ),
      ),
    );
  }
}
