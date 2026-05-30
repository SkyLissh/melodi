import "package:flutter/material.dart";

import "package:forui/forui.dart";

/// Custom color tokens unique to your app.
///
/// Based on:
/// * sky-surge (cyan) - secondary
/// * strawberry-red (red) - error / destructive
/// * blue-violet (purple) - primary
/// * space-indigo - UI backgrounds and surfaces
class PaletteColors extends ThemeExtension<PaletteColors> {
  // ─── Sky-Surge (Secondary / Cyan) ───
  final Color sky50;
  final Color sky100;
  final Color sky200;
  final Color sky300;
  final Color sky400;
  final Color sky500;
  final Color sky600;
  final Color sky700;
  final Color sky800;
  final Color sky900;
  final Color sky950;

  // ─── Strawberry-Red (Error / Destructive) ───
  final Color strawberry50;
  final Color strawberry100;
  final Color strawberry200;
  final Color strawberry300;
  final Color strawberry400;
  final Color strawberry500;
  final Color strawberry600;
  final Color strawberry700;
  final Color strawberry800;
  final Color strawberry900;
  final Color strawberry950;

  // ─── Blue-Violet (Primary / Purple) ───
  final Color violet50;
  final Color violet100;
  final Color violet200;
  final Color violet300;
  final Color violet400;
  final Color violet500;
  final Color violet600;
  final Color violet700;
  final Color violet800;
  final Color violet900;
  final Color violet950;

  // ─── Space-Indigo (UI Backgrounds & Surfaces) ───
  final Color spaceIndigo50;
  final Color spaceIndigo100;
  final Color spaceIndigo200;
  final Color spaceIndigo300;
  final Color spaceIndigo400;
  final Color spaceIndigo500;
  final Color spaceIndigo600;
  final Color spaceIndigo700;
  final Color spaceIndigo800;
  final Color spaceIndigo900;
  final Color spaceIndigo950;

  const PaletteColors({
    this.sky50 = const Color(0xFFE9F8FB),
    this.sky100 = const Color(0xFFD4F0F7),
    this.sky200 = const Color(0xFFA8E1F0),
    this.sky300 = const Color(0xFF7DD3E8),
    this.sky400 = const Color(0xFF52C4E0),
    this.sky500 = const Color(0xFF26B5D9),
    this.sky600 = const Color(0xFF1F91AD),
    this.sky700 = const Color(0xFF176D82),
    this.sky800 = const Color(0xFF0F4857),
    this.sky900 = const Color(0xFF08242B),
    this.sky950 = const Color(0xFF05191E),
    this.strawberry50 = const Color(0xFFFEE6E7),
    this.strawberry100 = const Color(0xFFFECDCF),
    this.strawberry200 = const Color(0xFFFD9BA0),
    this.strawberry300 = const Color(0xFFFC6970),
    this.strawberry400 = const Color(0xFFFB3741),
    this.strawberry500 = const Color(0xFFFA0511),
    this.strawberry600 = const Color(0xFFC8040E),
    this.strawberry700 = const Color(0xFF96030A),
    this.strawberry800 = const Color(0xFF640207),
    this.strawberry900 = const Color(0xFF320103),
    this.strawberry950 = const Color(0xFF230102),
    this.violet50 = const Color(0xFFF0E8FC),
    this.violet100 = const Color(0xFFE1D2F9),
    this.violet200 = const Color(0xFFC3A5F3),
    this.violet300 = const Color(0xFFA578ED),
    this.violet400 = const Color(0xFF874AE8),
    this.violet500 = const Color(0xFF691DE2),
    this.violet600 = const Color(0xFF5417B5),
    this.violet700 = const Color(0xFF3F1287),
    this.violet800 = const Color(0xFF2A0C5A),
    this.violet900 = const Color(0xFF15062D),
    this.violet950 = const Color(0xFF0F0420),
    this.spaceIndigo50 = const Color(0xFFEEEFF7),
    this.spaceIndigo100 = const Color(0xFFDCDFEF),
    this.spaceIndigo200 = const Color(0xFFB9BEDF),
    this.spaceIndigo300 = const Color(0xFF969ECF),
    this.spaceIndigo400 = const Color(0xFF737DBF),
    this.spaceIndigo500 = const Color(0xFF505DAF),
    this.spaceIndigo600 = const Color(0xFF404A8C),
    this.spaceIndigo700 = const Color(0xFF303869),
    this.spaceIndigo800 = const Color(0xFF202546),
    this.spaceIndigo900 = const Color(0xFF101323),
    this.spaceIndigo950 = const Color(0xFF0B0D18),
  });

  @override
  PaletteColors copyWith({
    Color? sky50,
    Color? sky100,
    Color? sky200,
    Color? sky300,
    Color? sky400,
    Color? sky500,
    Color? sky600,
    Color? sky700,
    Color? sky800,
    Color? sky900,
    Color? sky950,
    Color? strawberry50,
    Color? strawberry100,
    Color? strawberry200,
    Color? strawberry300,
    Color? strawberry400,
    Color? strawberry500,
    Color? strawberry600,
    Color? strawberry700,
    Color? strawberry800,
    Color? strawberry900,
    Color? strawberry950,
    Color? violet50,
    Color? violet100,
    Color? violet200,
    Color? violet300,
    Color? violet400,
    Color? violet500,
    Color? violet600,
    Color? violet700,
    Color? violet800,
    Color? violet900,
    Color? violet950,
    Color? spaceIndigo50,
    Color? spaceIndigo100,
    Color? spaceIndigo200,
    Color? spaceIndigo300,
    Color? spaceIndigo400,
    Color? spaceIndigo500,
    Color? spaceIndigo600,
    Color? spaceIndigo700,
    Color? spaceIndigo800,
    Color? spaceIndigo900,
    Color? spaceIndigo950,
  }) =>
      PaletteColors(
        sky50: sky50 ?? this.sky50,
        sky100: sky100 ?? this.sky100,
        sky200: sky200 ?? this.sky200,
        sky300: sky300 ?? this.sky300,
        sky400: sky400 ?? this.sky400,
        sky500: sky500 ?? this.sky500,
        sky600: sky600 ?? this.sky600,
        sky700: sky700 ?? this.sky700,
        sky800: sky800 ?? this.sky800,
        sky900: sky900 ?? this.sky900,
        sky950: sky950 ?? this.sky950,
        strawberry50: strawberry50 ?? this.strawberry50,
        strawberry100: strawberry100 ?? this.strawberry100,
        strawberry200: strawberry200 ?? this.strawberry200,
        strawberry300: strawberry300 ?? this.strawberry300,
        strawberry400: strawberry400 ?? this.strawberry400,
        strawberry500: strawberry500 ?? this.strawberry500,
        strawberry600: strawberry600 ?? this.strawberry600,
        strawberry700: strawberry700 ?? this.strawberry700,
        strawberry800: strawberry800 ?? this.strawberry800,
        strawberry900: strawberry900 ?? this.strawberry900,
        strawberry950: strawberry950 ?? this.strawberry950,
        violet50: violet50 ?? this.violet50,
        violet100: violet100 ?? this.violet100,
        violet200: violet200 ?? this.violet200,
        violet300: violet300 ?? this.violet300,
        violet400: violet400 ?? this.violet400,
        violet500: violet500 ?? this.violet500,
        violet600: violet600 ?? this.violet600,
        violet700: violet700 ?? this.violet700,
        violet800: violet800 ?? this.violet800,
        violet900: violet900 ?? this.violet900,
        violet950: violet950 ?? this.violet950,
        spaceIndigo50: spaceIndigo50 ?? this.spaceIndigo50,
        spaceIndigo100: spaceIndigo100 ?? this.spaceIndigo100,
        spaceIndigo200: spaceIndigo200 ?? this.spaceIndigo200,
        spaceIndigo300: spaceIndigo300 ?? this.spaceIndigo300,
        spaceIndigo400: spaceIndigo400 ?? this.spaceIndigo400,
        spaceIndigo500: spaceIndigo500 ?? this.spaceIndigo500,
        spaceIndigo600: spaceIndigo600 ?? this.spaceIndigo600,
        spaceIndigo700: spaceIndigo700 ?? this.spaceIndigo700,
        spaceIndigo800: spaceIndigo800 ?? this.spaceIndigo800,
        spaceIndigo900: spaceIndigo900 ?? this.spaceIndigo900,
        spaceIndigo950: spaceIndigo950 ?? this.spaceIndigo950,
      );

  @override
  PaletteColors lerp(covariant PaletteColors? other, double t) {
    if (other == null) return this;
    return PaletteColors(
      sky50: Color.lerp(sky50, other.sky50, t)!,
      sky100: Color.lerp(sky100, other.sky100, t)!,
      sky200: Color.lerp(sky200, other.sky200, t)!,
      sky300: Color.lerp(sky300, other.sky300, t)!,
      sky400: Color.lerp(sky400, other.sky400, t)!,
      sky500: Color.lerp(sky500, other.sky500, t)!,
      sky600: Color.lerp(sky600, other.sky600, t)!,
      sky700: Color.lerp(sky700, other.sky700, t)!,
      sky800: Color.lerp(sky800, other.sky800, t)!,
      sky900: Color.lerp(sky900, other.sky900, t)!,
      sky950: Color.lerp(sky950, other.sky950, t)!,
      strawberry50: Color.lerp(strawberry50, other.strawberry50, t)!,
      strawberry100: Color.lerp(strawberry100, other.strawberry100, t)!,
      strawberry200: Color.lerp(strawberry200, other.strawberry200, t)!,
      strawberry300: Color.lerp(strawberry300, other.strawberry300, t)!,
      strawberry400: Color.lerp(strawberry400, other.strawberry400, t)!,
      strawberry500: Color.lerp(strawberry500, other.strawberry500, t)!,
      strawberry600: Color.lerp(strawberry600, other.strawberry600, t)!,
      strawberry700: Color.lerp(strawberry700, other.strawberry700, t)!,
      strawberry800: Color.lerp(strawberry800, other.strawberry800, t)!,
      strawberry900: Color.lerp(strawberry900, other.strawberry900, t)!,
      strawberry950: Color.lerp(strawberry950, other.strawberry950, t)!,
      violet50: Color.lerp(violet50, other.violet50, t)!,
      violet100: Color.lerp(violet100, other.violet100, t)!,
      violet200: Color.lerp(violet200, other.violet200, t)!,
      violet300: Color.lerp(violet300, other.violet300, t)!,
      violet400: Color.lerp(violet400, other.violet400, t)!,
      violet500: Color.lerp(violet500, other.violet500, t)!,
      violet600: Color.lerp(violet600, other.violet600, t)!,
      violet700: Color.lerp(violet700, other.violet700, t)!,
      violet800: Color.lerp(violet800, other.violet800, t)!,
      violet900: Color.lerp(violet900, other.violet900, t)!,
      violet950: Color.lerp(violet950, other.violet950, t)!,
      spaceIndigo50: Color.lerp(spaceIndigo50, other.spaceIndigo50, t)!,
      spaceIndigo100: Color.lerp(spaceIndigo100, other.spaceIndigo100, t)!,
      spaceIndigo200: Color.lerp(spaceIndigo200, other.spaceIndigo200, t)!,
      spaceIndigo300: Color.lerp(spaceIndigo300, other.spaceIndigo300, t)!,
      spaceIndigo400: Color.lerp(spaceIndigo400, other.spaceIndigo400, t)!,
      spaceIndigo500: Color.lerp(spaceIndigo500, other.spaceIndigo500, t)!,
      spaceIndigo600: Color.lerp(spaceIndigo600, other.spaceIndigo600, t)!,
      spaceIndigo700: Color.lerp(spaceIndigo700, other.spaceIndigo700, t)!,
      spaceIndigo800: Color.lerp(spaceIndigo800, other.spaceIndigo800, t)!,
      spaceIndigo900: Color.lerp(spaceIndigo900, other.spaceIndigo900, t)!,
      spaceIndigo950: Color.lerp(spaceIndigo950, other.spaceIndigo950, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is PaletteColors &&
        other.sky50 == sky50 &&
        other.sky100 == sky100 &&
        other.sky200 == sky200 &&
        other.sky300 == sky300 &&
        other.sky400 == sky400 &&
        other.sky500 == sky500 &&
        other.sky600 == sky600 &&
        other.sky700 == sky700 &&
        other.sky800 == sky800 &&
        other.sky900 == sky900 &&
        other.sky950 == sky950 &&
        other.strawberry50 == strawberry50 &&
        other.strawberry100 == strawberry100 &&
        other.strawberry200 == strawberry200 &&
        other.strawberry300 == strawberry300 &&
        other.strawberry400 == strawberry400 &&
        other.strawberry500 == strawberry500 &&
        other.strawberry600 == strawberry600 &&
        other.strawberry700 == strawberry700 &&
        other.strawberry800 == strawberry800 &&
        other.strawberry900 == strawberry900 &&
        other.strawberry950 == strawberry950 &&
        other.violet50 == violet50 &&
        other.violet100 == violet100 &&
        other.violet200 == violet200 &&
        other.violet300 == violet300 &&
        other.violet400 == violet400 &&
        other.violet500 == violet500 &&
        other.violet600 == violet600 &&
        other.violet700 == violet700 &&
        other.violet800 == violet800 &&
        other.violet900 == violet900 &&
        other.violet950 == violet950 &&
        other.spaceIndigo50 == spaceIndigo50 &&
        other.spaceIndigo100 == spaceIndigo100 &&
        other.spaceIndigo200 == spaceIndigo200 &&
        other.spaceIndigo300 == spaceIndigo300 &&
        other.spaceIndigo400 == spaceIndigo400 &&
        other.spaceIndigo500 == spaceIndigo500 &&
        other.spaceIndigo600 == spaceIndigo600 &&
        other.spaceIndigo700 == spaceIndigo700 &&
        other.spaceIndigo800 == spaceIndigo800 &&
        other.spaceIndigo900 == spaceIndigo900 &&
        other.spaceIndigo950 == spaceIndigo950;
  }

  @override
  int get hashCode => Object.hashAll([
    sky50,
    sky100,
    sky200,
    sky300,
    sky400,
    sky500,
    sky600,
    sky700,
    sky800,
    sky900,
    sky950,
    strawberry50,
    strawberry100,
    strawberry200,
    strawberry300,
    strawberry400,
    strawberry500,
    strawberry600,
    strawberry700,
    strawberry800,
    strawberry900,
    strawberry950,
    violet50,
    violet100,
    violet200,
    violet300,
    violet400,
    violet500,
    violet600,
    violet700,
    violet800,
    violet900,
    violet950,
    spaceIndigo50,
    spaceIndigo100,
    spaceIndigo200,
    spaceIndigo300,
    spaceIndigo400,
    spaceIndigo500,
    spaceIndigo600,
    spaceIndigo700,
    spaceIndigo800,
    spaceIndigo900,
    spaceIndigo950,
  ]);
}

/// Provides convenient access to theme extensions on [FColors].
///
/// ```dart
/// final accent = context.theme.colors.palette.accent; ✅
///
/// // Alternatively, you can create a getter to access extension fields directly.
/// final accent = context.theme.colors.accent; ✅
///
/// final accent = context.theme.colors.extension<PaletteColors>().accent; ❌
/// ```
extension FColorsExtensions on FColors {
  PaletteColors get palette => extension<PaletteColors>();
}
