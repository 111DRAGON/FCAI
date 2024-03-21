import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fcai/core/widgets/loading%20state.dart';
import 'package:fcai/features/top%20students%20screen/presentation/views/widgets/top%20students%20body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/top students model.dart';




class TopStudentsPage extends StatelessWidget {
   TopStudentsPage({super.key});

  Future<QuerySnapshot> topQuery = FirebaseFirestore.instance.collection('students').orderBy('gpa',descending: true).get();
  List<TopStudentModel> topStudents = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Top Student".tr,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.black26),
          borderRadius: BorderRadius.circular(16),
        ),
        child: FutureBuilder(
          future: topQuery,
          builder: (context,snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return CustomLoadingState();
            }
            else{
              for(int i = 0;i < 2;i++){
                topStudents.add(TopStudentModel(name: snapshot.data!.docs[i]['name'], gpa: snapshot.data!.docs[i]['gpa'], department: snapshot.data!.docs[i]['department'],),);
              }
              return TopStudentsBody(topStudents: topStudents);
            }
          },
        ),
      ),
    );
  }
}
