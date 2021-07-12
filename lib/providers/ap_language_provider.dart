import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile/providers/app_graphql_provider.dart';
import 'package:mobile/utils/routes.dart';

class AppLanguageProvider extends StatelessWidget {
  final Locale locale;
  AppLanguageProvider({Key? key,
    required this.locale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppGraphQLProvider(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.red,
        primaryColor: Colors.green
      ),
      initialRoute: URL_WELCOME,
      routes: AppRoutes,
    )
    );
  }
}
