import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final double toolbarHeight;
  List<Widget> children = [];
  CustomScaffold({
    super.key,
    required this.toolbarHeight,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        toolbarHeight: toolbarHeight,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Form(child: Column(children: [...children.whereType<Widget>()])),
            ],
          ),
        ),
      ),
    );
  }
}
