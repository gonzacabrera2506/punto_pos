import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:stock_ventas/shared/widgets/custom_container.dart';
import 'package:stock_ventas/shared/widgets/custom_drawer.dart';
import 'package:stock_ventas/shared/widgets/custom_dropdown.dart';
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
      title: Text(
        "Registro de Producto",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.badge,
                        size: 40,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Identificador único",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomContainer(
                widgets: [
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
                ],
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.description,
                        size: 40,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Información genérica",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              CustomContainer(
                widgets: [
                  SizedBox(height: 10),
                  //Row(children: [Text("Datos generales")]),
                  CustomTextFormField(
                    obscureText: false,
                    controller: _email,
                    validation: ValidationBuilder().email().required().build(),
                    labelText: "Nombre del Producto",
                    prefixIcon: Icon(Icons.edit_outlined),
                  ),
                  // CustomTextFormField(
                  //   obscureText: false,
                  //   controller: _email,
                  //   validation: ValidationBuilder().email().required().build(),
                  //   labelText: "Categoría",
                  //   prefixIcon: Icon(Icons.category_outlined),
                  // ),
                  CustomDropdown(),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          obscureText: false,
                          controller: _email,
                          validation:
                              ValidationBuilder().email().required().build(),
                          labelText: "Stock Máximo",
                          prefixIcon: Icon(Icons.warehouse),
                          maxLength: 6,
                        ),
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          obscureText: false,
                          controller: _email,
                          validation:
                              ValidationBuilder().email().required().build(),
                          labelText: "Stock Mínimo",
                          prefixIcon: Icon(Icons.warehouse_outlined),
                          maxLength: 6,
                        ),
                      ),
                    ],
                  ),
                  CustomTextFormField(
                    obscureText: false,
                    controller: _email,
                    validation: ValidationBuilder().email().required().build(),
                    labelText: "Descripción",
                    prefixIcon: Icon(Icons.qr_code_outlined),
                    maxLength: 45,
                    maxLines: 2,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
