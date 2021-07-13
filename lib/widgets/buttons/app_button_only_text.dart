import 'package:flutter/material.dart';

class AppButtonOnlyText extends StatelessWidget {
  final double? width, height;
  final Color? color;
  final Color? backgroundColor;
  final String text;
  final VoidCallback? onPressed;
  final bool? isUppercase;

  const AppButtonOnlyText({
    Key? key,
    this.width = 120.0,
    this.height = 40.0,
    this.isUppercase = false,
    this.color = Colors.white,
    this.backgroundColor = Colors.blue,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          isUppercase == true ? text.toUpperCase() : text,
          style: TextStyle(
              color: color,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
        ),
      ),
    );
  }
}
