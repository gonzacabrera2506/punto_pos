import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomScaffold extends StatelessWidget {
  final double toolbarHeight;
  final Color? backgroundColor;
  final Widget? title;
  final Widget? leading;
  List<Widget> children = [];
  List<Widget>? avatar;
  final Widget? bottomNavigationBar;
  CustomScaffold({
    super.key,
    required this.toolbarHeight,
    required this.children,
    this.title,
    this.backgroundColor,
    this.leading,
    this.avatar,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        actions: avatar,
        backgroundColor: backgroundColor,
        leading: leading,
        toolbarHeight: toolbarHeight,
        title: title,
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
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
