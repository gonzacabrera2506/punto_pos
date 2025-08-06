import 'package:flutter/material.dart';

class CustomShowDialog extends StatelessWidget {
  final String textTitle;
  final String textContent;
  const CustomShowDialog({
    super.key,
    required this.textTitle,
    required this.textContent,
  });

  @override
  Widget build(BuildContext context) {
    return _alertDialog(context);
  }

  Widget _alertDialog(BuildContext context) {
    return AlertDialog(
      title: Text(textTitle),
      content: Text(textContent),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Aceptar'),
        ),
      ],
    );
  }
}
