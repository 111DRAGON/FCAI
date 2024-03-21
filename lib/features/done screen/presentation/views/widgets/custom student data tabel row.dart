import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';


pw.TableRow customStudentDataTableRow({required String key,required String value}){
  return pw.TableRow(
    decoration: pw.BoxDecoration(
      border: pw.Border.all(
        width: 1,
      ),
    ),
    children: [
      pw.Padding(
        padding: const pw.EdgeInsets.all(5),
        child: pw.Text(
          key,
          style: const pw.TextStyle(fontSize: 18),
        ),
      ),
      pw.Padding(
        padding: const pw.EdgeInsets.all(5),
        child: pw.Text(
         value,
          style: const pw.TextStyle(fontSize: 15),
        ),
      ),
    ],
  );
}
