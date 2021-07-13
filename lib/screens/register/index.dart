import 'package:flutter/material.dart';
import 'package:mobile/utils/translation.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(Translation.text(context).register),
        ],
      ),
    );
  }
}
