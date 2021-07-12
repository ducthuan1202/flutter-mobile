import 'package:flutter/material.dart';

class AppOutlineButtonOnlyText extends StatelessWidget {
  final double width, height;
  final Color borderColor;
  final String text;
  final VoidCallback? onPressed;

  const AppOutlineButtonOnlyText({
    Key? key,
    required this.width,
    required this.height,
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
        child: Expanded(
          child: OutlinedButton(
            onPressed: onPressed,
            child: Text(text, style: TextStyle(color: borderColor)),
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: borderColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
