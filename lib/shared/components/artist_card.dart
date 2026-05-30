import "package:flutter/widgets.dart";
import "package:forui/forui.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/theme/theme.dart";

class ArtistCard extends StatelessWidget {
  const ArtistCard({super.key});
  @override
  Widget build(BuildContext context) {
    final typography = context.theme.typography;
    final style = context.theme.style;
    final colors = context.theme.colors;

    return FTappable.static(
      onPress: () => print("Clicked Artist"),
      child: Column(
        spacing: style.spacing.sm,
        children: [
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(color: colors.muted, shape: .circle),
            child: const Center(child: HugeIcon(icon: HugeIcons.strokeRoundedUser, size: 64)),
          ),
          Text("Artist Name", style: typography.md),
        ],
      ),
    );
  }
}
