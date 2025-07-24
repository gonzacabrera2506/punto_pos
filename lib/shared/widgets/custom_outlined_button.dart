import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Widget child;
  final ButtonStyle? style;
  final VoidCallback? onPressed;

  const CustomOutlinedButton({
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
      child: OutlinedButton(
        child: child,
        style: OutlinedButton.styleFrom(
          //backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4), // Rounded corners
          ),
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary, // Border color
            width: 2.0, // Border width
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
