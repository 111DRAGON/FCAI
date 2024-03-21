import 'package:fcai/features/done%20screen/presentation/views/widgets/custom%20done%20page%20list%20view%20item%20text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDonePageListViewItem extends StatelessWidget {
  const CustomDonePageListViewItem({
    super.key,
    required this.name,
    required this.hours,
    required this.code,
  });

  final String code;
  final String name;
  final String hours;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.isDarkMode
          ? const Color.fromRGBO(49, 49, 49, 1)
          : const Color.fromRGBO(252, 253, 253, 1.0),
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            CustomDonePageListViewItemText(code),
            const SizedBox(width: 18),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: CustomDonePageListViewItemText(name),
              ),
            ),
            const SizedBox(width: 18),
            CustomDonePageListViewItemText(hours),
          ],
        ),
      ),
    );
  }
}
