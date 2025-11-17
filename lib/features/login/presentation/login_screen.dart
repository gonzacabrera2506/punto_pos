import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_ventas/features/register/presentation/screens/register_screen.dart';
import 'package:stock_ventas/shared/widgets/custom_elevated_button.dart';
import 'package:stock_ventas/shared/widgets/custom_outlined_button.dart';
import 'package:stock_ventas/shared/widgets/custom_scaffold.dart';
import 'package:stock_ventas/shared/widgets/custom_textFormField.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/welcome_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  //
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: Theme.of(context).primaryColor,
      toolbarHeight: 10,
      children: [
        Image.asset('assets/PuntoPOS.png', scale: 3.0),
        Column(
          children: [
            CustomTextFormField(
              obscureText: false,
              controller: _email,
              validation: ValidationBuilder().email().required().build(),
              labelText: "Email",
              prefixIcon: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 2),
            CustomTextFormField(
              obscureText: true,
              controller: _password,
              validation:
                  ValidationBuilder()
                      .minLength(6)
                      .maxLength(8)
                      .required()
                      .build(),
              labelText: "Password",
              prefixIcon: Icon(Icons.lock_outline_rounded),
            ),
            SizedBox(height: 30),
            CustomElevatedButton(
              child: Text(
                "INICIAR SESIÓN",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                //TODO: // Implement login functionality
              },
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                //TODO: // Navigate to password recovery screen
              },
              child: Text(
                "¿Olvidaste tu contraseña?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            CustomOutlinedButton(
              onPressed: () {
                context.pushNamed(RegisterScreen.routeName);
              },
              child: Text(
                "REGISTRARSE AHORA",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
