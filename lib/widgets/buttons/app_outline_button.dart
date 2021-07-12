import 'package:flutter/material.dart';

class AppOutlineButton extends StatelessWidget {
  final double width, height;
  final Color borderColor;
  final Widget child;
  final VoidCallback? onPressed;

  const AppOutlineButton({
    Key? key,
    required this.width,
    required this.height,
    required this.borderColor,
    required this.child,
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
              child: child,
          ),
        ),
      ),
    );
  }
}
