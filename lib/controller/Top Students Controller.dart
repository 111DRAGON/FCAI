import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopStudentsController extends GetxController {
  var id = "1".obs;
  var studentName = "Ahmed Ibrahim Hussain".obs;
  var studentGpa = 4.obs;
  var departmentName = "CS".obs;
  var men = "MEN".tr.obs;
  var women = "WOMEN".tr.obs;

  topStudentsRow() {
    return Container(
      color: Get.isDarkMode
          ? const Color.fromRGBO(49, 49, 49, 1)
          : const Color.fromRGBO(252, 253, 253, 1.0),
      child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
          child: SizedBox(
            height: 45,
            child: Row(
              children: [
                Text(
                  id.value,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      studentName.value,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "${studentGpa.value}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  departmentName.value,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );
  }
}
