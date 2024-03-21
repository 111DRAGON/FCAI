import 'package:flutter/material.dart';

import '../../../models/result list view model.dart';
import 'result list view item field.dart';

//import '../../../models/content list view model.dart';

class ResultListViewItem extends StatelessWidget {
  const ResultListViewItem({super.key, required this.listViewItemModel});

  final ResultListViewItemModel listViewItemModel;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ResultListViewItemField(text: listViewItemModel.code),

            const SizedBox(
              width: 18,
            ),
            Expanded(child: ResultListViewItemField(text: listViewItemModel.name)),

            const SizedBox(
              width: 18,
            ),
            ResultListViewItemField(text: listViewItemModel.grade),

            const SizedBox(
              width: 25,
            ),
            ResultListViewItemField(text: listViewItemModel.hours),

          ],
        ),
      ),
    );
  }
}
