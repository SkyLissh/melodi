import "package:flutter/widgets.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:forui/forui.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/theme/theme.dart";

class ArtistCard extends HookWidget {
  final String name;
  final String? imageUrl;

  const ArtistCard({required this.name, super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final typography = context.theme.typography;
    final style = context.theme.style;
    final colors = context.theme.colors;

    final hovered = useState(false);

    return FTappable.static(
      onHoverChange: (value) => hovered.value = value,
      onPress: () => print("Clicked Artist"),
      child: Column(
        spacing: style.spacing.sm,
        children: [
          Container(
            clipBehavior: .hardEdge,
            height: 180,
            width: 180,
            decoration: BoxDecoration(color: colors.muted, shape: .circle),
            child: AnimatedScale(
              scale: hovered.value ? 1.2 : 1.0,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              child: imageUrl != null
                  ? Image.network(imageUrl!)
                  : const Center(child: HugeIcon(icon: HugeIcons.strokeRoundedUser, size: 64)),
            ),
          ),
          Text(name, style: typography.md),
        ],
      ),
    );
  }
}
