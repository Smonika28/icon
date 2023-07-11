import 'package:flutter/material.dart';
import 'package:groomely_seller/widgets/invoice/pdfexport/pdf/pdf_export.dart';
import 'package:printing/printing.dart';
class PdfPreviewPage extends StatelessWidget {
  const PdfPreviewPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('PDF Preview'),
        backgroundColor: Colors.white,
      ),
      body: PdfPreview(
        build: (context) => makePdf(),
      ),
    );
  }
}