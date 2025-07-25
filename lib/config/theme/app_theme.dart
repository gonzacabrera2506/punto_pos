import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF2CA2D3);
const Color secundaryColor = Color.fromARGB(255, 28, 98, 129);

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),

      //brightness: Brightness.dark,
    );
  }
}
