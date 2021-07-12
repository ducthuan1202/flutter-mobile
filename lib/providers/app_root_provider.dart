import 'package:flutter/material.dart';
import 'package:mobile/bloc/language_cubit.dart';
import 'package:mobile/providers/app_language_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRootProvider extends StatelessWidget {
  const AppRootProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (_) => LanguageCubit(),
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (_, locale) => AppLanguageProvider(locale: locale),
      ),
    );
  }
}
