import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_ventas/features/register/presentation/register_screen.dart';
import 'package:stock_ventas/shared/widgets/custom_elevated_button.dart';
import 'package:stock_ventas/shared/widgets/custom_outlined_button.dart';
import 'package:stock_ventas/shared/widgets/custom_scaffold.dart';
import 'package:stock_ventas/shared/widgets/custom_textFormField.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/welcome_screen';

  const LoginScreen({super.key});
  //
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      toolbarHeight: 10,
      children: [
        Image.asset('assets/PuntoPOS.png', scale: 3.0),
        Column(
          children: [
            CustomTextFormField(
              obscureText: false,
              labelText: "Email",
              prefixIcon: Icon(Icons.email_outlined),
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
