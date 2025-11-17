import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_ventas/features/products/presentation/products_screen.dart';
import 'package:stock_ventas/shared/widgets/custom_card.dart';
import 'package:stock_ventas/shared/widgets/custom_circle_avatar.dart';
import 'package:stock_ventas/shared/widgets/custom_drawer.dart';
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
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
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
      //bottomNavigationBar: CustomBottomNavigationBar(),
      title: Image.asset('assets/PuntoPOS_letras.png', scale: 1.5),
      toolbarHeight: 60,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Column(
            children: [
              // CustomDashboardHead(),
              Row(children: [SizedBox(height: 15)]),
              Row(
                children: [
                  CustomCard(
                    icon: Icon(
                      Icons.inventory_2_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 85.0,
                    ),
                    text: Text(
                      "Productos",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CustomCard(
                    icon: Icon(
                      Icons.warning_amber_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 85.0,
                    ),
                    text: Text(
                      "Alertas",
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
                      Icons.point_of_sale_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 85.0,
                    ),
                    text: Text(
                      "Todas las Ventas",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CustomCard(
                    icon: Icon(
                      Icons.store_outlined,
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
                ],
              ),
              Row(
                children: [
                  CustomCard(
                    onTap: () {
                      context.pushNamed(ProductsScreen.routeName);
                    },
                    icon: Icon(
                      Icons.qr_code_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 85.0,
                    ),
                    text: Text(
                      "Registrar Producto",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CustomCard(
                    icon: Icon(
                      Icons.person_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 85.0,
                    ),
                    text: Text(
                      "Proveedores",
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
