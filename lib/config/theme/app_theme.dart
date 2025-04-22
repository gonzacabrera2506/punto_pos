import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 0, 238, 178);

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: primaryColor,

      //brightness: Brightness.dark,
    );
  }
}
