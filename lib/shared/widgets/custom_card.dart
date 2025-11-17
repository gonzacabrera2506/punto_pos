import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget icon;
  final Widget text;
  final Function()? onTap;
  const CustomCard({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.25,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 2.5,
          color: Colors.white,
          shadowColor: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 35), icon, SizedBox(height: 40), text],
          ),
        ),
      ),
    );
  }
}
