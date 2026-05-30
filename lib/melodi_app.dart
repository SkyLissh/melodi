import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:forui/forui.dart";
import "package:melodi/extensions/extensions.dart";
import "package:melodi/features/window/window.dart";
import "package:melodi/l10n/app_localizations.dart";
import "package:melodi/router/router.dart";
import "package:melodi/theme/theme.dart";

class MelodiApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MelodiApp({super.key});

  @override
  Widget build(final BuildContext context) {
    final theme = defaultTargetPlatform.isDesktop
        ? AppThemes.melodi.dark.desktop
        : AppThemes.melodi.light.touch;

    return WidgetsApp.router(
      debugShowCheckedModeBanner: false,
      color: theme.colors.primary,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        ...FLocalizations.localizationsDelegates,
        AppLocalizations.delegate,
      ],
      routerConfig: _appRouter.config(),
      builder: (_, child) => FTheme(
        data: theme,
        child: FToaster(
          child: FTooltipGroup(
            child: defaultTargetPlatform.isDesktop ? WindowShell(child: child!) : child!,
          ),
        ),
      ),
    );
  }
}
