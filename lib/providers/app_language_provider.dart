import 'package:flutter/material.dart';
import 'package:mobile/providers/app_config.dart';
import 'package:mobile/providers/app_graphql_provider.dart';

class AppLanguageProvider extends StatelessWidget {
  final Locale locale;

  AppLanguageProvider({
    Key? key,
    required this.locale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppGraphQLProvider(
      child: AppConfig(locale: locale),
    );
  }
}
