import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'widget/data entry element.dart';

class DataEntryPage extends StatelessWidget {
  const DataEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController gpaController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController idController = TextEditingController();
    TextEditingController percentController = TextEditingController();
    TextEditingController departmentController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController hoursController = TextEditingController();
    GlobalKey<FormState> key = GlobalKey<FormState>();
    CollectionReference<Map<String, dynamic>> ref =
        FirebaseFirestore.instance.collection('students');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Entry'),
        centerTitle: true,
      ),
      body: Form(
        key: key,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            DataEntryElement(
              controller: nameController,
              title: 'Name',
              validator: (_) =>
                  nameController.text.isEmpty ? 'name can\'t be empty' : null,
            ),
            DataEntryElement(
              controller: idController,
              title: 'Id',
              type: TextInputType.phone,
              validator: (_) =>
                  idController.text.length != 6 ? 'id must be 6 numbers' : null,
            ),
            DataEntryElement(
              controller: gpaController,
              title: 'GPA',
              type: TextInputType.phone,
              validator: (_) => gpaController.text.isEmpty ||
                      int.parse(gpaController.text) > 4.0 ||
                      int.parse(gpaController.text) < 0.0
                  ? 'GPA must be more than 0 and less than 4'
                  : null,
            ),
            DataEntryElement(
              controller: emailController,
              title: 'Email',
              type: TextInputType.emailAddress,
              validator: (_) => emailController.text.isEmpty ||
                      !(emailController.text.contains('@')) ||
                      !(emailController.text.contains('.'))
                  ? 'Invalid email'
                  : null,
            ),
            DataEntryElement(
              controller: passwordController,
              title: 'Password',
              type: TextInputType.visiblePassword,
              validator: (_) => passwordController.text.isEmpty ||
                      passwordController.text.length < 7
                  ? 'password must be more than 7 characters'
                  : null,
            ),
            DataEntryElement(
              controller: departmentController,
              title: 'Department',
              validator: (_) => departmentController.text.isEmpty
                  ? 'department can\'t be empty'
                  : null,
            ),
            DataEntryElement(
              controller: hoursController,
              title: 'Completed Hours',
              type: TextInputType.phone,
              validator: (_) => hoursController.text.isEmpty ||
                      int.parse(hoursController.text) < 0.0 ||
                      int.parse(hoursController.text) > 144
                  ? 'GPA must be more than 0 and less than 144'
                  : null,
            ),
            DataEntryElement(
              controller: percentController,
              title: 'Percent',
              type: TextInputType.phone,
              validator: (_) => percentController.text.isEmpty ||
                      int.parse(percentController.text) > 100.0 ||
                      int.parse(percentController.text) < 0.0
                  ? 'percent must be more than 0 and less than 100'
                  : null,
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ButtonStyle(
                maximumSize: MaterialStateProperty.all(Size(100,100),),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),),),
                padding: MaterialStateProperty.all(const EdgeInsets.all(16),),

              ),
              onPressed: () async {
                bool valid = key.currentState!.validate();
                if (valid) {
                  await ref.add(
                    {
                      'name': nameController.text,
                      'department': departmentController.text,
                      'id': idController.text,
                      'percent': int.parse(percentController.text),
                      'gpa': int.parse(gpaController.text),
                      'completed_hours': int.parse(hoursController.text),
                      'email': emailController.text,
                      'password': passwordController.text,
                      'result': {},
                      'registered': [],
                    },
                  );
                  nameController.clear();
                  departmentController.clear();
                  idController.clear();
                  percentController.clear();
                  gpaController.clear();
                  hoursController.clear();
                  emailController.clear();
                  passwordController.clear();
                }
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
