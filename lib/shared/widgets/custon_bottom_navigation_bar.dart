import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final ValueChanged<int>? onTap;
  const CustomBottomNavigationBar({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    return BottomNavigationBar(
      backgroundColor: Colors.white,
      unselectedItemColor: Theme.of(context).colorScheme.secondary,
      iconSize: 40,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_rounded),
          label: 'Ventas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storefront_rounded),
          label: 'Compras',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics_rounded),
          label: 'Reportes',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
    );
  }
}
