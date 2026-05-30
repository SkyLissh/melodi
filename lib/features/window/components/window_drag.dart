import "package:flutter/widgets.dart";

class WindowDragHandle extends StatelessWidget {
  final VoidCallback onDrag;
  final VoidCallback onMaximize;
  final VoidCallback onSecondaryTap;

  const WindowDragHandle({
    required this.onDrag,
    required this.onMaximize,
    required this.onSecondaryTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: GestureDetector(
        onPanStart: (_) => onDrag(),
        onDoubleTap: () => onMaximize(),
        onSecondaryTap: () => onSecondaryTap(),
      ),
    );
  }
}
