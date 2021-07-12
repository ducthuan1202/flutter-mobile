import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobile/providers/app_root_provider.dart';

Future main() async {
  await dotenv.load(fileName: '.env');

  runApp(AppRootProvider());
}
