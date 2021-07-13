import 'package:flutter/material.dart';

class RobotoText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const RobotoText({
    Key? key,
    required this.text,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var textStyle = TextStyle(
      fontFamily: "Roboto",
    );

    if(style != null){
      textStyle = textStyle.merge(style);
    }

    return Text(
      text,
      style: textStyle,
    );
  }
}
