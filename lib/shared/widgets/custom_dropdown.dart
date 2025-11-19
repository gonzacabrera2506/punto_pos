import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>[
      'Alimentos',
      'Bebidas',
      'Bazar',
      'Limpieza',
      'Otros',
    ];
    //TODO:   reemplazar por respuesta JSON de API
    String dropdownValue = list.first;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DropdownButtonFormField<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items:
            list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
      ),
    );
  }
}
