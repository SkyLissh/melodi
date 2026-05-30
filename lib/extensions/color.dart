import "package:flutter/widgets.dart";

extension ColorExtensions on Color {
  Color withBrightness(double brightness) {
    final hsl = HSLColor.fromColor(this);
    return hsl.withLightness(brightness).toColor();
  }
}
