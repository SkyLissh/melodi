import "package:flutter/material.dart";

final class Spacing extends ThemeExtension<Spacing> {
  final double none;
  final double xs2;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xl2;
  final double xl3;

  const Spacing({
    this.none = 0,
    this.xs2 = 2,
    this.xs = 4,
    this.sm = 8,
    this.md = 12,
    this.lg = 16,
    this.xl = 24,
    this.xl2 = 32,
    this.xl3 = 48,
  });

  Spacing scale(double scalar) => Spacing(
    none: none,
    xs2: xs2 * scalar,
    xs: xs * scalar,
    sm: sm * scalar,
    md: md * scalar,
    lg: lg * scalar,
    xl: xl * scalar,
    xl2: xl2 * scalar,
    xl3: xl3 * scalar,
  );

  @override
  Spacing copyWith({
    double? none,
    double? xs2,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xl2,
    double? xl3,
  }) =>
      Spacing(
        none: none ?? this.none,
        xs2: xs2 ?? this.xs2,
        xs: xs ?? this.xs,
        sm: sm ?? this.sm,
        md: md ?? this.md,
        lg: lg ?? this.lg,
        xl: xl ?? this.xl,
        xl2: xl2 ?? this.xl2,
        xl3: xl3 ?? this.xl3,
      );

  @override
  Spacing lerp(covariant Spacing? other, double t) {
    if (other == null) return this;
    return Spacing(
      none: none + (other.none - none) * t,
      xs2: xs2 + (other.xs2 - xs2) * t,
      xs: xs + (other.xs - xs) * t,
      sm: sm + (other.sm - sm) * t,
      md: md + (other.md - md) * t,
      lg: lg + (other.lg - lg) * t,
      xl: xl + (other.xl - xl) * t,
      xl2: xl2 + (other.xl2 - xl2) * t,
      xl3: xl3 + (other.xl3 - xl3) * t,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Spacing &&
          runtimeType == other.runtimeType &&
          none == other.none &&
          xs2 == other.xs2 &&
          xs == other.xs &&
          sm == other.sm &&
          md == other.md &&
          lg == other.lg &&
          xl == other.xl &&
          xl2 == other.xl2 &&
          xl3 == other.xl3;

  @override
  int get hashCode =>
      none.hashCode ^
      xs2.hashCode ^
      xs.hashCode ^
      sm.hashCode ^
      md.hashCode ^
      lg.hashCode ^
      xl.hashCode ^
      xl2.hashCode ^
      xl3.hashCode;
}

final class FPadding extends ThemeExtension<FPadding> {
  final EdgeInsets none;
  final EdgeInsets xs2;
  final EdgeInsets xs;
  final EdgeInsets sm;
  final EdgeInsets md;
  final EdgeInsets lg;
  final EdgeInsets xl;
  final EdgeInsets xl2;
  final EdgeInsets xl3;

  const FPadding({
    this.none = EdgeInsets.zero,
    this.xs2 = const .all(2),
    this.xs = const .all(4),
    this.sm = const .all(8),
    this.md = const .all(12),
    this.lg = const .all(16),
    this.xl = const .all(24),
    this.xl2 = const .all(32),
    this.xl3 = const .all(48),
  });

  FPadding scale(double scalar) => FPadding(
    none: none,
    xs2: xs2 * scalar,
    xs: xs * scalar,
    sm: sm * scalar,
    md: md * scalar,
    lg: lg * scalar,
    xl: xl * scalar,
    xl2: xl2 * scalar,
    xl3: xl3 * scalar,
  );

  @override
  FPadding copyWith({
    EdgeInsets? none,
    EdgeInsets? xs2,
    EdgeInsets? xs,
    EdgeInsets? sm,
    EdgeInsets? md,
    EdgeInsets? lg,
    EdgeInsets? xl,
    EdgeInsets? xl2,
    EdgeInsets? xl3,
  }) =>
      FPadding(
        none: none ?? this.none,
        xs2: xs2 ?? this.xs2,
        xs: xs ?? this.xs,
        sm: sm ?? this.sm,
        md: md ?? this.md,
        lg: lg ?? this.lg,
        xl: xl ?? this.xl,
        xl2: xl2 ?? this.xl2,
        xl3: xl3 ?? this.xl3,
      );

  @override
  FPadding lerp(covariant FPadding? other, double t) {
    if (other == null) return this;
    return FPadding(
      none: EdgeInsets.lerp(none, other.none, t) ?? none,
      xs2: EdgeInsets.lerp(xs2, other.xs2, t) ?? xs2,
      xs: EdgeInsets.lerp(xs, other.xs, t) ?? xs,
      sm: EdgeInsets.lerp(sm, other.sm, t) ?? sm,
      md: EdgeInsets.lerp(md, other.md, t) ?? md,
      lg: EdgeInsets.lerp(lg, other.lg, t) ?? lg,
      xl: EdgeInsets.lerp(xl, other.xl, t) ?? xl,
      xl2: EdgeInsets.lerp(xl2, other.xl2, t) ?? xl2,
      xl3: EdgeInsets.lerp(xl3, other.xl3, t) ?? xl3,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FPadding &&
          runtimeType == other.runtimeType &&
          none == other.none &&
          xs2 == other.xs2 &&
          xs == other.xs &&
          sm == other.sm &&
          md == other.md &&
          lg == other.lg &&
          xl == other.xl &&
          xl2 == other.xl2 &&
          xl3 == other.xl3;

  @override
  int get hashCode =>
      none.hashCode ^
      xs2.hashCode ^
      xs.hashCode ^
      sm.hashCode ^
      md.hashCode ^
      lg.hashCode ^
      xl.hashCode ^
      xl2.hashCode ^
      xl3.hashCode;
}
