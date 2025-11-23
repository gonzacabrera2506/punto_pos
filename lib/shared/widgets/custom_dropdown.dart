import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final String? labelText;

  const CustomDropdown({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>[
      '-Seleccione una opción-',
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
        //icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.fromLTRB(0, 7, 0, 0),
          labelStyle: TextStyle(fontSize: 22),
          labelText: widget.labelText,
          prefixIcon:
              widget.prefixIcon != null
                  ? IconTheme(
                    data: IconThemeData(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: widget.prefixIcon!,
                  )
                  : null,
          suffixIcon: widget.suffixIcon,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          errorStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2.0,
            ),
          ),
        ),
        style: TextStyle(fontSize: 16, color: Colors.black),
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
