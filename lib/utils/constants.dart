import 'package:flutter/material.dart';

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

class AppColors {
  final transparency;
  var primary;
  var secondary;

  AppColors({this.transparency = 1.0}) {
    this.primary = Color(0xFF61c759).withOpacity(transparency);
    this.secondary = Color(0xFFf58634).withOpacity(transparency);
  }
}
