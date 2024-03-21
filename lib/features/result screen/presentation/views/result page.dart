import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fcai/core/utils/user%20data.dart';
import 'package:fcai/core/widgets/loading%20state.dart';
import 'package:fcai/features/result%20screen/models/student%20data%20model.dart';
import 'package:fcai/features/result%20screen/presentation/views/widgets/result%20body.dart';

//import 'package:fcai/features/result%20screen/presentation/views/widgets/result%20content%20list%20view%20item.dart';
import 'package:fcai/features/result%20screen/presentation/views/widgets/result%20page%20stundent%20data%20section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/result list view model.dart';
import 'widgets/result list view item.dart';
//import 'widgets/result content list view item.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key});

  Future<QuerySnapshot> querySnapshot = FirebaseFirestore.instance
      .collection('students')
      .where('email', isEqualTo: getIt.get<String>())
      .get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Result".tr,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(
        future: querySnapshot,
        builder: (context, snapshot) {
          StudentData studentData = StudentData(
            name: snapshot.data!.docs[0]['name'],
            department: snapshot.data!.docs[0]['department'],
            code: snapshot.data!.docs[0]['id'],
            percent: snapshot.data!.docs[0]['percent'],
            gpa: snapshot.data!.docs[0]['gpa'],
            completedHours: snapshot.data!.docs[0]['completed_hours'],
          );
          if (!snapshot.hasData) {
            return const CustomLoadingState();
          } else {
            List results = snapshot.data!.docs[0]['result'].values.toList();
            List names = snapshot.data!.docs[0]['result'].keys.toList();
            return ResultBody(
              itemCount: snapshot.data!.docs[0]['result'].length,
              studentData: studentData,
              names: names,
              results: results,
            );
          }
        },
      ),
    );
  }
}
