import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';


pw.TableRow customSubjectDataTableRow({required String code,required String name,required String hours,}){
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
          code,
          style: const pw.TextStyle(fontSize: 18),
        ),
      ),
      pw.Padding(
        padding: const pw.EdgeInsets.all(5),
        child: pw.Text(
         name,
          style: const pw.TextStyle(fontSize: 18),
        ),
      ),
      pw.Padding(
        padding: const pw.EdgeInsets.all(5),
        child: pw.Text(
         hours,
          style: const pw.TextStyle(fontSize: 18),
        ),
      ),
      
    ],
  );
}
