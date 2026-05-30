import "package:flutter/material.dart";
import "package:forui/forui.dart";
import "package:google_fonts/google_fonts.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/theme/palette.dart";
import "package:melodi/theme/spacing.dart";
import "package:melodi/theme/styles/styles.dart";

export "package:melodi/theme/palette.dart";

part "colors.dart";
part "style.dart";
part "typography.dart";

FIconBuilder _hugeIcon(List<List<dynamic>> icon) =>
    (_, {semanticsLabel}) => HugeIcon(icon: icon);

FThemeData _createTheme({
  required FColors colors,
  required bool touch,
  String fontFamily = FTypography.defaultFontFamily,
}) {
  final typography = _typography(colors: colors, touch: touch, fontFamily: fontFamily);

  final icons = FIcons(
    arrowLeft: _hugeIcon(HugeIcons.strokeRoundedArrowLeft01),
    calendar: _hugeIcon(HugeIcons.strokeRoundedCalendar01),
    check: _hugeIcon(HugeIcons.strokeRoundedTick01),
    chevronDown: _hugeIcon(HugeIcons.strokeRoundedArrowDown01),
    chevronLeft: _hugeIcon(HugeIcons.strokeRoundedArrowLeft01),
    chevronRight: _hugeIcon(HugeIcons.strokeRoundedArrowRight01),
    chevronUp: _hugeIcon(HugeIcons.strokeRoundedArrowUp01),
    chevronsUpDown: _hugeIcon(HugeIcons.strokeRoundedChevronsDownUp),
    circleAlert: _hugeIcon(HugeIcons.strokeRoundedAlertCircle),
    clock4: _hugeIcon(HugeIcons.strokeRoundedClock04),
    ellipsis: _hugeIcon(HugeIcons.strokeRoundedMoreHorizontal),
    eye: _hugeIcon(HugeIcons.strokeRoundedEye),
    eyeClosed: _hugeIcon(HugeIcons.strokeRoundedViewOff),
    gripHorizontal: _hugeIcon(HugeIcons.strokeRoundedDrag01),
    gripVertical: _hugeIcon(HugeIcons.strokeRoundedDrag02),
    loader: _hugeIcon(HugeIcons.strokeRoundedLoading01),
    loaderCircle: _hugeIcon(HugeIcons.strokeRoundedLoading02),
    loaderPinwheel: _hugeIcon(HugeIcons.strokeRoundedLoaderPinwheel),
    search: _hugeIcon(HugeIcons.strokeRoundedSearch01),
    userRound: _hugeIcon(HugeIcons.strokeRoundedUser),
    x: _hugeIcon(HugeIcons.strokeRoundedCancel01),
  );

  final style = _style(colors: colors, typography: typography, touch: touch);

  return FThemeData(
    colors: colors,
    typography: typography,
    icons: icons,
    style: style,
    touch: touch,
    buttonStyles: buttonStyles(colors: colors, typography: typography, style: style, touch: touch),
    itemStyles: itemStyles(colors: colors, typography: typography, style: style, touch: touch),
    sidebarStyle: sidebarStyle(
      colors: colors,
      typography: typography,
      style: style,
      touch: touch,
      icons: icons,
    ),
  );
}

String get _geistFontFamily => GoogleFonts.geist().fontFamily ?? FTypography.defaultFontFamily;

/// The default light theme (touch-optimized).
///
/// See also:
/// * [AppThemes] for desktop/touch variants.
FThemeData get defaultLight =>
    _createTheme(colors: lightColors, touch: true, fontFamily: _geistFontFamily);

/// The default dark theme (touch-optimized).
///
/// See also:
/// * [AppThemes] for desktop/touch variants.
FThemeData get defaultDark =>
    _createTheme(colors: darkColors, touch: true, fontFamily: _geistFontFamily);

/// Application themes, structured like [FThemes].
///
/// Provides desktop and touch variants for each theme, lazily created.
///
/// ```dart
/// FTheme(data: AppThemes.melodi.light.touch, child: ...)
/// FTheme(data: AppThemes.melodi.dark.desktop, child: ...)
/// ```
extension AppThemes on Never {
  /// The Melodi custom theme.
  static final melodi = (
    light: FPlatformThemeData(
      desktop: () => _createTheme(colors: lightColors, touch: false, fontFamily: _geistFontFamily),
      touch: () => _createTheme(colors: lightColors, touch: true, fontFamily: _geistFontFamily),
    ),
    dark: FPlatformThemeData(
      desktop: () => _createTheme(colors: darkColors, touch: false, fontFamily: _geistFontFamily),
      touch: () => _createTheme(colors: darkColors, touch: true, fontFamily: _geistFontFamily),
    ),
  );
}
