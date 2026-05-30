import "package:flutter/widgets.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:forui/forui.dart";
import "package:melodi/features/window/hooks/use_window.dart";

class WindowShell extends HookWidget {
  final Widget child;

  const WindowShell({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.theme.style;
    final colors = context.theme.colors;

    final window = useWindow();

    return ClipRRect(
      borderRadius: window.isMaximized ? .zero : style.borderRadius.md,
      child: DecoratedBox(
        position: .foreground,
        decoration: BoxDecoration(
          borderRadius: window.isMaximized ? .zero : style.borderRadius.md,
          border: window.isMaximized ? null : .all(color: colors.muted, width: 1),
        ),
        child: child,
      ),
    );
  }
}
