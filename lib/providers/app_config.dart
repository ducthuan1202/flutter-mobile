import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile/utils/routes.dart';

class AppConfig extends StatelessWidget {
  final Locale locale;

  AppConfig({Key? key, required this.locale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        // ElevatedButton color
        primarySwatch: Colors.green,
        // AppBar background
        primaryColor: Colors.blue,
        // float button color
        accentColor: Colors.red,
        // bottom app bar color
        bottomAppBarColor: Colors.grey,
      ),
      initialRoute: URL_EVENTS,
      routes: AppRoutes,
    );
  }
}
