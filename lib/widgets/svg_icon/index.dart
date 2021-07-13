import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// gender icon by svg file
class SvgIcon extends StatelessWidget {
  final String icon;
  final Color color;
  final double size;

  const SvgIcon({
    Key? key,
    required this.icon,
    this.color = Colors.black,
    this.size = 30.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'svg/home.svg',
      semanticsLabel: 'Acme Logo',
      height: size,
      width: size,
      color: color,
      fit: BoxFit.cover,
      alignment: Alignment.center,
    );
  }
}
