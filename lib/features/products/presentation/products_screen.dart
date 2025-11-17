import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:stock_ventas/shared/widgets/custom_container.dart';
import 'package:stock_ventas/shared/widgets/custom_drawer.dart';
import 'package:stock_ventas/shared/widgets/custom_outlined_button.dart';
import 'package:stock_ventas/shared/widgets/custom_scaffold.dart';
import 'package:stock_ventas/shared/widgets/custom_textFormField.dart';

class ProductsScreen extends StatefulWidget {
  static const String routeName = '/new_product';
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      toolbarHeight: 60,
      title: Image.asset('assets/PuntoPOS_letras.png', scale: 1.5),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Registro de Producto")],
              ),
              SizedBox(height: 10),
              CustomContainer(
                widgets: [
                  //Row(children: [Text("Datos generales")]),
                  CustomTextFormField(
                    obscureText: false,
                    controller: _email,
                    validation: ValidationBuilder().email().required().build(),
                    labelText: "Código de barras",
                    prefixIcon: Icon(Icons.qr_code_outlined),
                    suffixIcon: GestureDetector(
                      child: Icon(Icons.qr_code_scanner),
                      onTap: () {
                        print("escanner qr");
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
