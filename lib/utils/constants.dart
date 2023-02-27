import 'package:flutter/material.dart';

class AppColors {
  static Color primaryWhite = const Color(0xFFCADCED);

  static List pieColors = [
    Colors.indigo[400],
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];
  static List<BoxShadow> customShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5), spreadRadius: -5, blurRadius: 30),
    BoxShadow(
        color: Colors.blue[900]!.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 20)
  ];
}
