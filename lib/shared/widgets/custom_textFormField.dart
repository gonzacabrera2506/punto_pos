import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validation;
  final String? labelText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? maxLength;

  const CustomTextFormField({
    super.key,
    this.labelText,
    this.prefixIcon,
    required this.obscureText,
    required this.controller,
    this.validation,
    this.suffixIcon,
    this.maxLines,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return
    //SizedBox(
    // width: MediaQuery.of(context).size.width * 0.9,
    // height: MediaQuery.of(context).size.height * 0.06,
    //child:
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        validator: validation,
        maxLines: maxLines,
        maxLength: maxLength,
        cursorHeight: 24,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.fromLTRB(0, 7, 0, 0),
          labelStyle: TextStyle(fontSize: 22),
          labelText: labelText,
          prefixIcon:
              prefixIcon != null
                  ? IconTheme(
                    data: IconThemeData(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: prefixIcon!,
                  )
                  : null,
          suffixIcon: suffixIcon,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          errorStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
    //);
  }
}
