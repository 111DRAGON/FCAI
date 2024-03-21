
import 'package:flutter/material.dart';

class TopStudentsRow  extends StatelessWidget {

  var id = "1";
  var studentName = "Ahmed Ibrahim Hussain";
  var studentCode = 000000;
  var departmentName = "CS";
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
        child: SizedBox(
          height: 45,
          child: Row(
            children: [
              Text(
                id,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  studentName,
                  style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "$studentCode",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                departmentName,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
