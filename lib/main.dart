import 'package:citizen_app/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:citizen_app/Screens/ProfilePage.dart';
import 'package:citizen_app/Screens/HelpPage.dart';

void main() {
  runApp(new MaterialApp(
    title: "Citizen App",
    home: new HomePage(),
    routes: {
      "profile": (context) => ProfilePage(),
      "help": (context) => HelpPage()
    },
  ));
}
