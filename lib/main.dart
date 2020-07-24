import 'package:citizen_app/Screens/HomePage.dart';
import 'package:citizen_app/Screens/FIRList.dart';
import 'package:citizen_app/Screens/missingList.dart';
import 'package:citizen_app/Screens/missing.dart';
import 'package:citizen_app/Screens/pdfViewer.dart';
import 'package:citizen_app/Screens/reportMissing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      theme: ThemeData.dark(),
      title: "Citizen App",
      home: new HomePage(),
      routes: {
        FIRStatus.id: (context) => FIRStatus(),
        Missing.id: (context) => Missing(),
        Report.id : (context) => Report(),
        DisplayLost.id : (context) => DisplayLost(),
        PdfViewerPage.id : (context) => PdfViewerPage()
      },
    ),
  );
}
