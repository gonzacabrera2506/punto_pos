import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stock_ventas/shared/widgets/custom_card.dart';
import 'package:stock_ventas/shared/widgets/custom_circle_avatar.dart';
import 'package:stock_ventas/shared/widgets/custom_scaffold.dart';

class DashboardScreen extends StatefulWidget {
  static const String routeName = '/dashboard_screen';
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  File? _image;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: Colors.red,
      leading: Icon(Icons.menu),
      avatar: [
        CustomCircleAvatar(
          backgroundImage: _image != null ? FileImage(_image!) : null,
          icon: Icon(
            Icons.person,
            size: 25.0,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
      title: Image.asset('assets/PuntoPOS_letras.png', scale: 1.5),
      toolbarHeight: 70,
      children: [
        Row(children: [CustomCard(), CustomCard()]),
      ],
    );
  }
}
