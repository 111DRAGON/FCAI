import 'package:fcai/features/result%20screen/models/student%20data%20model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/result list view model.dart';
import 'result list view item.dart';
import 'result page stundent data section.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({
    super.key,
    required this.studentData,
    required this.results,
    required this.itemCount,
    required this.names,
  });

  final List results;
  final List names;
  final StudentData studentData;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        ResultPageStudentDataSection(
          studentData: studentData,
        ),
        const SizedBox(
          height: 5,
        ),
        ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 20,
              color: Colors.black26,
              indent: 20,
              endIndent: 20,
              thickness: 5,
            );
          },
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Get.isDarkMode
                          ? const Color.fromRGBO(49, 49, 49, 1)
                          : Colors.white,
                      border: Border.all(
                        width: 3,
                        color: Colors.black26,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            names[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.black26,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      color: Get.isDarkMode
                          ? const Color.fromRGBO(49, 49, 49, 1)
                          : const Color.fromRGBO(250, 251, 252, 1.0),
                    ),
                    height: 400,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: results[index].length,
                      itemBuilder: (context, i) {
                        return ResultListViewItem(
                          listViewItemModel: ResultListViewItemModel(
                            code: results[index][i]['code'],
                            name: results[index][i]['name'],
                            grade: results[index][i]['grade'],
                            hours: results[index][i]['hours'],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          height: 2,
                          color: Colors.black26,
                          indent: 20,
                          endIndent: 20,
                          thickness: 2,
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
