import "package:flutter/foundation.dart" show defaultTargetPlatform;
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:forui/forui.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/extensions/extensions.dart";

class WindowButtons extends HookWidget {
  final VoidCallback onMaximize;
  final VoidCallback onMinimize;
  final VoidCallback onClose;

  const WindowButtons({
    required this.onMaximize,
    required this.onMinimize,
    required this.onClose,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.colors;
    final style = context.theme.style;
    final l10n = context.l10n;

    final minimizeButtonStyle = useMemoized(
      () => switch (defaultTargetPlatform) {
        .windows => windowsButtonStyle(colors: colors, style: style),
        .macOS => macOsButtonStyle(colors: colors, style: style, type: .minimize),
        .linux => adwaitaButtonStyle(colors: colors),
        _ => windowsButtonStyle(colors: colors, style: style),
      },
      [defaultTargetPlatform],
    );
    final maximizeButtonStyle = useMemoized(
      () => switch (defaultTargetPlatform) {
        .windows => windowsButtonStyle(colors: colors, style: style),
        .macOS => macOsButtonStyle(colors: colors, style: style, type: .maximize),
        .linux => adwaitaButtonStyle(colors: colors),
        _ => windowsButtonStyle(colors: colors, style: style),
      },
      [defaultTargetPlatform],
    );
    final closeButtonStyle = useMemoized(
      () => switch (defaultTargetPlatform) {
        .windows => windowsButtonStyle(colors: colors, style: style),
        .macOS => macOsButtonStyle(colors: colors, style: style, type: .close),
        .linux => adwaitaButtonStyle(colors: colors),
        _ => windowsButtonStyle(colors: colors, style: style),
      },
      [defaultTargetPlatform],
    );

    final buttonSpacing = useMemoized(
      () => switch (defaultTargetPlatform) {
        .windows => 4.0,
        .macOS => 8.0,
        .linux => 12.0,
        _ => 4.0,
      },
      [defaultTargetPlatform],
    );

    return Row(
      spacing: buttonSpacing,
      children: [
        FButton.icon(
          semanticsLabel: l10n.minimize,
          style: minimizeButtonStyle,
          child: const HugeIcon(icon: HugeIcons.strokeRoundedMinusSign),
          onPress: () => onMinimize(),
        ),
        FButton.icon(
          semanticsLabel: l10n.maximize,
          style: maximizeButtonStyle,
          child: const HugeIcon(icon: HugeIcons.strokeRoundedSquare),
          onPress: () => onMaximize(),
        ),
        FButton.icon(
          semanticsLabel: l10n.close,
          style: closeButtonStyle,
          child: const HugeIcon(icon: HugeIcons.strokeRoundedCancel01),
          onPress: () => onClose(),
        ),
      ],
    );
  }
}

FButtonStyleDelta adwaitaButtonStyle({required FColors colors}) => .delta(
  iconContentStyle: .delta(
    iconStyle: FVariants.from(
      IconThemeData(color: colors.mutedForeground, size: 12.0),
      variants: {},
    ),
    padding: const .value(.all(6.0)),
    constraints: const BoxConstraints.tightFor(width: 24.0, height: 24.0),
  ),
  decoration: FVariants.from(
    BoxDecoration(shape: .circle, color: colors.muted),
    variants: {
      [.hovered]: .boxDelta(color: colors.muted.withBrightness(0.3)),
    },
  ),
);

FButtonStyleDelta windowsButtonStyle({
  required FColors colors,
  required FStyle style,
  bool isClose = false,
}) => .delta(
  iconContentStyle: .delta(
    iconStyle: FVariants.from(IconThemeData(color: colors.mutedForeground), variants: {}),
    padding: const .value(.all(6.0)),
    constraints: const BoxConstraints.tightFor(width: 28.0, height: 28.0),
  ),
  decoration: FVariants.from(
    BoxDecoration(borderRadius: style.borderRadius.xs),
    variants: {
      [.hovered]: .boxDelta(
        color: !isClose ? colors.muted.withBrightness(0.3) : colors.destructive,
      ),
    },
  ),
);

enum ButtonType { close, minimize, maximize }

FButtonStyleDelta macOsButtonStyle({
  required FColors colors,
  required FStyle style,
  required ButtonType type,
}) => .delta(
  iconContentStyle: .delta(
    iconStyle: FVariants.from(
      const IconThemeData(color: Colors.black, opacity: 0),
      variants: {
        [.hovered]: const .delta(opacity: 1),
      },
    ),
    padding: const .value(.all(4.0)),
    constraints: const BoxConstraints.tightFor(width: 16.0, height: 16.0),
  ),
  decoration: FVariants.from(
    BoxDecoration(
      shape: .circle,
      color: switch (type) {
        .close => const Color(0xFFFF605C),
        .minimize => const Color(0xFFFFBD44),
        .maximize => const Color(0xFF00CA4E),
      },
    ),
    variants: {},
  ),
);
