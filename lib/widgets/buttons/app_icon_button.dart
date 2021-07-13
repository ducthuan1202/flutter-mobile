import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final Widget icon;
  final Color color;
  final VoidCallback? onPressed;

  const AppIconButton({
    Key? key,
    this.color = Colors.blueGrey,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      color: color,
      onPressed: onPressed,
    );
  }
}
