import 'package:flutter/material.dart';

class AppOutlineButtonOnlyText extends StatelessWidget {
  final double? width, height;
  final Color color;
  final String text;
  final VoidCallback? onPressed;
  final bool? isUppercase;

  const AppOutlineButtonOnlyText({
    Key? key,
    this.width = 120.0,
    this.height = 40.0,
    this.isUppercase = false,
    this.color = Colors.blueGrey,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
            isUppercase == true ? text.toUpperCase() : text,
            style: TextStyle(color: color)
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: color),
        ),
      ),
    );
  }
}
