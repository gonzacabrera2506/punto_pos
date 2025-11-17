import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:stock_ventas/features/register/presentation/bloc/register_bloc.dart';
import 'package:stock_ventas/shared/infrastructure/services/camera_gallery/camera_gallery_service_impl.dart';
import 'package:stock_ventas/shared/widgets/custom_circle_avatar.dart';
import 'package:stock_ventas/shared/widgets/custom_elevated_button.dart';
import 'package:stock_ventas/shared/widgets/custom_scaffold.dart';
import 'package:stock_ventas/shared/widgets/custom_show_dialog.dart';
import 'package:stock_ventas/shared/widgets/custom_textFormField.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register_screen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _confirmaEmail = TextEditingController();
  final TextEditingController _password = TextEditingController();
  File? _image;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.isSuccess) {
          CustomShowDialog(
            textContent: 'Te has registrado extosamente!',
            textTitle: 'Registro',
          );
        }
        if (state.isChecking) {
          Container(
            color: Colors.black45,
            child: const Center(child: CircularProgressIndicator()),
          );
        }
        if (state.isFailure) {
          CustomShowDialog(
            textContent: 'Hubo un error en registro. Intente nuevamente.',
            textTitle: 'Atención!',
          );
        }
      },
      builder: (context, state) {
        return CustomScaffold(
          toolbarHeight: 10,
          backgroundColor: Theme.of(context).primaryColor,
          children: [
            Image.asset('assets/PuntoPOS.png', scale: 8.0),
            Text(
              "¡Bienvenido a PuntoPOS!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 2),
            Text(
              textAlign: TextAlign.center,
              "Para poder comenzar a usar PuntoPOS, necesitamos conocerte. Completa el siguiente formulario para crear tu cuenta.",
              style: TextStyle(fontSize: 13),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CustomCircleAvatar(
                            onTap: () async {
                              final photoPath =
                                  await CameraGalleryServiceImpl()
                                      .selectPhoto();
                              if (photoPath != null) {
                                setState(() {
                                  _image = File(photoPath);
                                });
                              }
                            },
                            backgroundImage:
                                _image != null ? FileImage(_image!) : null,
                            icon: Icon(
                              Icons.person,
                              size: 45.0,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              final photoPath =
                                  await CameraGalleryServiceImpl().takePhoto();
                              if (photoPath != null) {
                                setState(() {
                                  _image = File(photoPath);
                                });
                              }
                            },
                            child: Icon(
                              Icons.camera_alt_rounded,
                              size: 28.0,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      CustomTextFormField(
                        obscureText: false,
                        controller: _nombre,
                        validation:
                            ValidationBuilder(
                              localeName: 'es',
                            ).maxLength(30).required().build(),
                        labelText: "Nombre/negocio",
                        prefixIcon: Icon(Icons.person_outline_rounded),
                      ),
                      SizedBox(height: 1),
                      CustomTextFormField(
                        obscureText: false,
                        controller: _email,
                        validation:
                            ValidationBuilder(
                              localeName: 'es',
                            ).email().required().build(),
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      //SizedBox(height: 1),
                      CustomTextFormField(
                        obscureText: false,
                        controller: _confirmaEmail,
                        validation:
                            ValidationBuilder(
                              localeName: 'es',
                            ).email().required().build(),
                        labelText: "Confirmar email",
                        prefixIcon: Icon(Icons.email_rounded),
                      ),
                      SizedBox(height: 1),
                      CustomTextFormField(
                        obscureText: true,
                        controller: _password,
                        validation:
                            ValidationBuilder(
                              localeName: 'es',
                            ).required().minLength(6).maxLength(8).build(),
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                      ),
                      SizedBox(height: 15),
                      CustomElevatedButton(
                        child: Text(
                          "REGISTRAR",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (_email.text == _confirmaEmail.text) {
                              context.read<RegisterBloc>().add(
                                RegisterUserWithFirebase(
                                  email: _email.text,
                                  password: _password.text,
                                  name: _nombre.text,
                                  imageFile: _image,
                                ),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder:
                                    (_) => CustomShowDialog(
                                      textContent: 'Atención!',
                                      textTitle:
                                          'El Email y la confirmación deben coincidir.',
                                    ),
                              );
                            }
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
