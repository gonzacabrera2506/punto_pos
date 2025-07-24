import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final ButtonStyle? style;
  final VoidCallback? onPressed;

  const CustomElevatedButton({
    super.key,
    required this.child,
    this.style,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4), // Bordes redondeados
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
