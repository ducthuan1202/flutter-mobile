import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Translation {
  static AppLocalizations text(BuildContext context) {
    return AppLocalizations.of(context)!;
  }
}