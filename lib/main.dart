import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobile/bloc/language_cubit.dart';
import 'package:mobile/providers/ap_language_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => LanguageCubit(),
        child: BlocBuilder<LanguageCubit, Locale>(
          builder: (_, locale) => AppLanguageProvider(locale: locale),
        ));
  }
}
