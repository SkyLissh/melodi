import "package:flutter/widgets.dart";
import "package:melodi/l10n/app_localizations.dart";

extension LocalizationsExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
