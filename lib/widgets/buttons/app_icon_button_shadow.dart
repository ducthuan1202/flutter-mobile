import 'package:flutter/material.dart';

class AppIconButtonShadow extends StatelessWidget {
  final Color shadowColor;
  final Widget icon;
  final Color color;
  final VoidCallback? onPressed;

  const AppIconButtonShadow({
    Key? key,
    this.shadowColor = Colors.blueGrey,
    this.color = Colors.blueGrey,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(10.0),
        //   topRight: Radius.circular(10.0),
        //   bottomRight: Radius.circular(10.0),
        //   bottomLeft: Radius.circular(10.0),
        // ),
        boxShadow:[
          BoxShadow(
            color: shadowColor.withOpacity(0.2),
            spreadRadius: 0.0,
            blurRadius: 5.0,
            offset: Offset(1.0, 1.0),
          )
        ]
      ),
      child: IconButton(
        icon: icon,
        color: color,
        onPressed: onPressed,
      ),
    );
  }
}
