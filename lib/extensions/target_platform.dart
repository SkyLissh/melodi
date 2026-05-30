import "package:flutter/foundation.dart";

extension TargetPlatformExtension on TargetPlatform {
  bool get isDesktop =>
      this == TargetPlatform.linux ||
      this == TargetPlatform.macOS ||
      this == TargetPlatform.windows;

  bool get isMobile => this == TargetPlatform.android || this == TargetPlatform.iOS;
}
