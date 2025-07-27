import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF2CA2D3);
const Color secundaryColor = Color(0xFF5ED2FF);

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),

      //brightness: Brightness.dark,
    );
  }
}
