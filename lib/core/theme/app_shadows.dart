import 'package:flutter/material.dart';

class AppShadows {
  AppShadows._();

  static const List<BoxShadow> card = [
    BoxShadow(
      color: Color.fromRGBO(28, 25, 23, 0.06),
      blurRadius: 16,
      offset: Offset(0, 4),
    ),
  ];

  static const List<BoxShadow> elevated = [
    BoxShadow(
      color: Color.fromRGBO(28, 25, 23, 0.10),
      blurRadius: 24,
      offset: Offset(0, 8),
    ),
  ];

  static const List<BoxShadow> fab = [
    BoxShadow(
      color: Color.fromRGBO(194, 65, 12, 0.30),
      blurRadius: 20,
      offset: Offset(0, 8),
    ),
  ];
}
