// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Text(
                            'Punto POS',
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Menú Principal',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  splashColor: Colors.transparent,
                  leading: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text(
                    'Nueva Venta',
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                    //TODO: redirigir
                  },
                ),
                ListTile(
                  splashColor: Colors.transparent,
                  leading: Icon(
                    Icons.point_of_sale_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text(
                    'Todas las ventas ',
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                    //TODO: redirigir
                  },
                ),
                ListTile(
                  splashColor: Colors.transparent,
                  leading: Icon(
                    Icons.analytics_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text('Reportes', style: TextStyle(fontSize: 16)),
                  onTap: () {
                    //TODO: redirigir
                  },
                ),
                ListTile(
                  splashColor: Colors.transparent,
                  leading: Icon(
                    Icons.category_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text(
                    'Categorías',
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                    //TODO: redirigir
                  },
                ),
                ListTile(
                  splashColor: Colors.transparent,
                  leading: Icon(
                    Icons.person_add_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text(
                    'Agregar Proveedores',
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                    //TODO: redirigir
                  },
                ),
              ],
            ),
          ),
          // This container holds the align
          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Divider(),
                    ListTile(
                      splashColor: Colors.transparent,
                      leading: Icon(
                        Icons.exit_to_app_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        'Cerrar Sesión',
                        style: TextStyle(fontSize: 16),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
