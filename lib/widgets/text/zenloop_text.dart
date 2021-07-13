import 'package:flutter/material.dart';

class ZenLoopText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const ZenLoopText({
    Key? key,
    required this.text,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var textStyle = TextStyle(
      fontFamily: "ZenLoop",
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
