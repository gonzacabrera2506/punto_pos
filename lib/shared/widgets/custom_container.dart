import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final List<Widget> widgets;
  const CustomContainer({super.key, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2.5,
      shadowColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[...widgets],
      ),
    );
  }
}
