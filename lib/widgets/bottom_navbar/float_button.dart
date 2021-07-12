import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? tooltip;
  final Widget? child;
  const FloatButton({
    Key? key,
    this.child,
    this.tooltip,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: tooltip,
      child: child,
    );
  }
}
