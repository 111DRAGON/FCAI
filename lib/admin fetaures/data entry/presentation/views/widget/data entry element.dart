import 'package:flutter/material.dart';

class DataEntryElement extends StatelessWidget {
  const DataEntryElement({
    super.key,
    required this.controller,
    required this.title,
    this.type,
    this.validator,
  });
  final String title;
  final TextEditingController controller;
  final TextInputType? type;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextFormField(
            validator: validator,
            keyboardType: type,
            controller: controller,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
