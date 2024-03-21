import 'package:flutter/material.dart';


class CoursesRegistrationRowItem extends StatelessWidget {
  const CoursesRegistrationRowItem({super.key,required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      //snapshot.data!.docs[index]['hours'],
      style: const TextStyle(

          fontSize: 18,
          fontWeight: FontWeight.bold,),
      overflow: TextOverflow.ellipsis,
    );
  }
}
