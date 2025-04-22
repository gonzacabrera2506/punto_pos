import 'package:flutter/material.dart';
import 'package:stock_ventas/config/router/app_router.dart';
import 'package:stock_ventas/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Stock_Ventas App',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: true,
      theme: AppTheme().theme(),
    );
  }
}
