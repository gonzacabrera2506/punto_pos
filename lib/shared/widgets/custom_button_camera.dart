import 'package:flutter/material.dart';

class CustomButtonCamera extends StatelessWidget {
  final Widget child;
  final ButtonStyle? style;
  final VoidCallback? onPressed;
  const CustomButtonCamera({
    super.key,
    required this.child,
    this.style,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.10,
      height: MediaQuery.of(context).size.height * 0.10,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          iconAlignment: IconAlignment.start,
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: CircleBorder(), // Bordes redondeados
        ),
        child: child,
      ),
    );
  }
}
