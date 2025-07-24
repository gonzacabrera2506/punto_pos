import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stock_ventas/shared/infrastructure/services/camera_gallery_service_impl.dart';
import 'package:stock_ventas/shared/widgets/custom_circle_avatar.dart';
import 'package:stock_ventas/shared/widgets/custom_elevated_button.dart';
import 'package:stock_ventas/shared/widgets/custom_scaffold.dart';
import 'package:stock_ventas/shared/widgets/custom_textFormField.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register_screen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  File? _image;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      toolbarHeight: 10,
      children: [
        Image.asset('assets/PuntoPOS.png', scale: 6.0),
        Text(
          "¡Bienvenido a PuntoPOS!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 5),
        Text(
          textAlign: TextAlign.center,
          "Para poder comenzar a usar PuntoPOS, necesitamos conocerte. Completa el siguiente formulario para crear tu cuenta.",
          style: TextStyle(fontSize: 14),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Form(
              child: Column(
                children: [
                  CustomCircleAvatar(
                    onTap: () async {
                      final photoPath =
                          await CameraGalleryServiceImpl().selectPhoto();
                      if (photoPath != null) {
                        setState(() {
                          _image = File(photoPath);
                        });
                      }
                    },
                    backgroundImage: _image != null ? FileImage(_image!) : null,
                    icon: Icon(
                      Icons.person,
                      size: 50.0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    labelText: "Nombre/negocio",
                    prefixIcon: Icon(Icons.person_outline_rounded),
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email_outlined),
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    labelText: "Confirmar email",
                    prefixIcon: Icon(Icons.email_rounded),
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    obscureText: true,
                  ),
                  SizedBox(height: 30),
                  CustomElevatedButton(
                    child: Text(
                      "REGISTRAR",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      //TODO: // REGISTRO EN BD
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
