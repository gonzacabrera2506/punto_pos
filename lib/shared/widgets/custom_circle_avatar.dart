import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatefulWidget {
  final Function()? onTap;
  final ImageProvider<Object>? backgroundImage;
  final Widget? icon;
  const CustomCircleAvatar({
    super.key,
    this.onTap,
    this.backgroundImage,
    this.icon,
  });

  @override
  State<CustomCircleAvatar> createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: CircleAvatar(
        radius: 45.0,
        backgroundImage: widget.backgroundImage,
        child: widget.backgroundImage == null ? widget.icon : null,
      ),
    );
  }
}
