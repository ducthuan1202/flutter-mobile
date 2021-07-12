import 'package:flutter/material.dart';

class AppOutlineButtonOnlyText extends StatelessWidget {
  final double? width, height;
  final Color borderColor;
  final String text;
  final VoidCallback? onPressed;
  final bool? isUppercase;

  const AppOutlineButtonOnlyText({
    Key? key,
    this.width = 120.0,
    this.height = 40.0,
    this.isUppercase = true,
    required this.borderColor,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: width,
        height: height,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(
              isUppercase == true ? text.toUpperCase() : text,
              style: TextStyle(color: borderColor)
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: borderColor,
            ),
          ),
        ),
      ),
    );
  }
}
