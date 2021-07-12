import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/bloc/language_cubit.dart';
import 'package:mobile/utils/main_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile/utils/routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pushNamed(context, URL_HOME),
        ),
        title: Text('Settings'),
      ),
      child: SingleChildScrollView(
        child: ContentSettings(),
      ),
      floatButton: FloatingActionButton(
        onPressed: () {
          print('Settings');
        },
        child: Icon(Icons.camera_alt_outlined),
      ),
    );
  }
}

class ContentSettings extends StatefulWidget {
  const ContentSettings({Key? key}) : super(key: key);

  @override
  _ContentSettingsState createState() => _ContentSettingsState();
}

class _ContentSettingsState extends State<ContentSettings> {

  bool isEnglish = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text(AppLocalizations.of(context)!.appLanguage),
          trailing: Switch(
              value: isEnglish,
              onChanged: (bool value) {
                setState(() {
                  isEnglish = !isEnglish;
                  context.read<LanguageCubit>().toggleLanguage();
                });
              }),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text(
              AppLocalizations.of(context)!.settingsAccountInformation),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text(AppLocalizations.of(context)!.settingsAccountUsers),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text(AppLocalizations.of(context)!.settingsPreferences),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title:
          Text(AppLocalizations.of(context)!.settingsPushNotifications),
          trailing: Icon(Icons.beach_access_outlined),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title:
          Text(AppLocalizations.of(context)!.settingsTermsConditions),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text(AppLocalizations.of(context)!.settingsPrivacyPolicy),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text(AppLocalizations.of(context)!.settingsHelpSupport),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text(AppLocalizations.of(context)!.settingsArchive),
        ),
      ],
    );
  }
}

