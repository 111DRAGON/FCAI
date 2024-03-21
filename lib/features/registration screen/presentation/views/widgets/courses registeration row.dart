import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/registeration controller.dart';
import 'courses registeration row item.dart';

class CoursesRegistrationRow extends StatefulWidget {
  const CoursesRegistrationRow({
    super.key,
    required this.code,
    required this.name,
    required this.hours,
    required this.id,
  });

  final int id;
  final String code;
  final String name;
  final String hours;

  @override
  State<CoursesRegistrationRow> createState() => __CoursesRegistrationRowState();
}

class __CoursesRegistrationRowState extends State<CoursesRegistrationRow> {

  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    CoursesRegistrationController controller = Get.put(CoursesRegistrationController());
    return Container(
      padding: const EdgeInsets.all(10),
      color: Get.isDarkMode
          ? const Color.fromRGBO(49, 49, 49, 1)
          : const Color.fromRGBO(252, 253, 253, 1.0),
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            //Text(controller.remindHours.value.toString()),
            CoursesRegistrationRowItem(text: widget.code),
            const SizedBox(width: 18),
            Expanded(
              child: CoursesRegistrationRowItem(text: widget.name),
            ),
            const SizedBox(width: 18),
            CoursesRegistrationRowItem(text: widget.hours),
            const SizedBox(
              width: 10
            ),
            AnimatedCrossFade(
              firstChild:  ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                onPressed: (controller.currentSelectedHours.value + int.parse(widget.hours)) >18 ?null:() {
                  controller.currentSelectedHours.value += int.parse(widget.hours);
                  controller.remindHours.value -= int.parse(widget.hours);
                  controller.courses.add({
                    'code': widget.code,
                    'name': widget.name,
                    'hours': widget.hours,
                  });
                  controller.selectedCourses.add(widget.id);
                  showRegistrationDialog(currentSelectedHours: controller.currentSelectedHours.value, remindHours: controller.remindHours.value);

                  setState(() {
                    isSelected = !isSelected;
                  });
                },

                child: const Icon(Icons.add,),
              ),
              secondChild: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                onPressed: () {
                  controller.currentSelectedHours.value -= int.parse(widget.hours);
                  controller.remindHours.value += int.parse(widget.hours);
                  controller.courses.removeWhere((element) => element['code'] == widget.code);
                  controller.selectedCourses.removeWhere((element)=> element == widget.id);
                  showRegistrationDialog(currentSelectedHours: controller.currentSelectedHours.value, remindHours: controller.remindHours.value);

                  setState(() {
                    isSelected = !isSelected;
                  });
                },

                child: const Icon(Icons.remove),

              ),
              duration: Duration(milliseconds: 500),
              crossFadeState: isSelected? CrossFadeState.showSecond:CrossFadeState.showFirst,

            ),
           ],
      ),),
    );
  }
}

void showRegistrationDialog({required int currentSelectedHours,required int remindHours}){
  Get.defaultDialog(
    title: "Selected Hours",
    titleStyle: const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
    ),
    middleText:
    "Current Selected Hours ${currentSelectedHours} \n Remind Hours ${remindHours}",
    middleTextStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 20,
    ),
    textCancel: "Close",
    cancelTextColor: Colors.black,
  );
}
