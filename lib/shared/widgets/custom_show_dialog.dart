import 'package:flutter/material.dart';

class CustomShowDialog extends StatelessWidget {
  const CustomShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return _alertDialog(context);
  }

  Widget _alertDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Atención!'),
      content: const Text('El Email y la confirmación deben coincidir.'),
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
