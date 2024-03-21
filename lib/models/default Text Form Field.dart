import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  DefaultTextFormField({
   // this.maxLine,
     this.suffixIcon,
    this.obscureText,
    //this.radius,
    this.validator,
    required this.controller,
    required this.type,
    required this.labelText,
    required this.prefixIcon,
  });

  TextInputType? type;
  bool? obscureText;
  String? labelText;
  //double? radius;
  Widget? suffixIcon;
  IconData? prefixIcon;
 // int? maxLine;
  TextEditingController? controller;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      validator: validator,
    //  maxLines: maxLine ?? 1,
      controller: controller,
      keyboardType: type,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
