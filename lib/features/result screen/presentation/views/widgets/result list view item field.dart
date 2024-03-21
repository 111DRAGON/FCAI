import 'package:flutter/material.dart';


class ResultListViewItemField extends StatelessWidget {
  const ResultListViewItemField({super.key,required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
