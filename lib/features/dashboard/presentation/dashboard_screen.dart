import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stock_ventas/shared/widgets/custom_card.dart';
import 'package:stock_ventas/shared/widgets/custom_circle_avatar.dart';
import 'package:stock_ventas/shared/widgets/custom_dashboard_head.dart';
import 'package:stock_ventas/shared/widgets/custom_scaffold.dart';
import 'package:stock_ventas/shared/widgets/custon_bottom_navigation_bar.dart';

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
      backgroundColor: Colors.white,
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
      bottomNavigationBar: CustomBottomNavigationBar(),
      title: Image.asset('assets/PuntoPOS_letras.png', scale: 1.5),
      toolbarHeight: 60,
      children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              CustomDashboardHead(),
              Row(children: [SizedBox(height: 10)]),
              Row(
                children: [
                  CustomCard(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 85.0,
                    ),
                    text: Text(
                      "Vender",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CustomCard(
                    icon: Icon(
                      Icons.storefront_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 85.0,
                    ),
                    text: Text(
                      "Comprar",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  CustomCard(
                    icon: Icon(
                      Icons.storage_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 85.0,
                    ),
                    text: Text(
                      "Stock",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CustomCard(
                    icon: Icon(
                      Icons.analytics_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 85.0,
                    ),
                    text: Text(
                      "Reportes",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
