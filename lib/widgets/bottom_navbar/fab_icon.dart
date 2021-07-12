import 'package:flutter/material.dart';
import 'package:mobile/utils/constants.dart';

class FABIcon extends StatelessWidget {
  String tooltip;
  double size;
  VoidCallback? onPressed;
  Icon icon;
  bool active;

  FABIcon(
      {Key? key,
        this.tooltip = '',
        this.size = 30,
        this.active = false,
        this.onPressed,
        required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final background = active ? Colors.white : Color(navBottomBackground);
    final color = active ? Colors.black87 : Color(navIconColor);

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        tooltip: tooltip,
        iconSize: size,
        color: color,
      ),
    );
  }
}