import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fcai/constants.dart';
import 'package:fcai/features/done%20screen/presentation/views/widgets/custom%20done%20page%20listview%20item.dart';
import 'package:fcai/features/done%20screen/presentation/views/widgets/custom%20student%20data%20tabel%20row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import 'widgets/custom subject data table row.dart';

void printing(BuildContext context,List data,) async {

  final doc = pw.Document();
  final collegeLogo = await imageFromAssetBundle(kLogo);
  final universityLogo = await imageFromAssetBundle(kLogo2);

  doc.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context pwcontext) {
        return pw.Column(
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Image(
                  collegeLogo,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                pw.SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: pw.Text(
                    'Faculty of computers and artificial intelligence',
                    style: pw.TextStyle(fontSize: 18),
                    textAlign: pw.TextAlign.center,
                  ),
                ),
                pw.Image(
                  universityLogo,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ],
            ),
            pw.SizedBox(height: 10),
            pw.Table(
              border: const pw.TableBorder(
                verticalInside: pw.BorderSide(width: 1),
              ),
              children: [
                customStudentDataTableRow(key: 'id', value: '200255'),
                customStudentDataTableRow(
                    key: 'name', value: 'mahoud said elsayed'),
                customStudentDataTableRow(key: 'Department', value: 'CS - 4'),
                customStudentDataTableRow(key: 'gpa', value: '3.1'),

              ],
            ),
            pw.SizedBox(height: 20),
            pw.Table(
              border: const pw.TableBorder(
                verticalInside: pw.BorderSide(width: 1),
              ),
              children: data.map((e) => customSubjectDataTableRow(code: e['code'], name: e['name'], hours: e['hours'],),).toList(),
            ),
          ],
        );
      },
    ),
  );
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => doc.save());
}

class DonePage extends StatelessWidget {
  const DonePage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<QuerySnapshot<Map<String, dynamic>>> student = FirebaseFirestore
        .instance
        .collection('students')
        .where('email', isEqualTo: 'swilam12@gmail.com')
        .get();

    return Scaffold(
        appBar: AppBar(
          actions: [
            FutureBuilder(
              future: student,
              builder: (context,snapshot){
                return IconButton(
                  onPressed: () async {
                    printing(context,snapshot.data!.docs[0]['registered']);
                  },
                  icon: const Icon(Icons.print),
                );
              },
            )
          ],
          centerTitle: true,
          title: const Text(
            "Done Page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: FutureBuilder(
          future: student,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.black26,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListView.separated(
                  itemCount: snapshot.data!.docs[0]['registered'].length,
                  itemBuilder: (context, index) {
                    return CustomDonePageListViewItem(
                      code: snapshot.data!.docs[0]['registered'][index]['code'],
                      name: snapshot.data!.docs[0]['registered'][index]['name'],
                      hours: snapshot.data!.docs[0]['registered'][index]['hours'],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      height: 2,
                      color: Colors.black26,
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                    );
                  },
                ),
              );
            }
          },
        ),
    );
  }
}
