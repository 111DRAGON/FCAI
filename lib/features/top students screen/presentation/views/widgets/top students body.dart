import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fcai/features/top%20students%20screen/models/top%20students%20model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TopStudentsBody extends StatelessWidget {
  const TopStudentsBody({super.key,required this.topStudents});

 final List<TopStudentModel> topStudents;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: topStudents.length,
      itemBuilder: (context, index) {
        return Container(
          height: 45,
          padding:
          const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          color: Get.isDarkMode
              ? const Color.fromRGBO(49, 49, 49, 1)
              : const Color.fromRGBO(252, 253, 253, 1.0),
          child: Row(
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
                    topStudents[index].name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                topStudents[index].gpa.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(

                topStudents[index].department,
                style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold,),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 2,
          color: Colors.black26,
          indent: 20,
          endIndent: 20,
          thickness: 2,
        );
      },
    );
  }
}
