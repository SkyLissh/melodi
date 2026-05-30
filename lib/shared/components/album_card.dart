import "package:flutter/widgets.dart";
import "package:forui/forui.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/theme/theme.dart";

class AlbumCard extends StatelessWidget {
  const AlbumCard({super.key});
  @override
  Widget build(BuildContext context) {
    final typography = context.theme.typography;
    final style = context.theme.style;
    final colors = context.theme.colors;

    return FTappable.static(
      onPress: () => print("Clicked Album"),
      child: Column(
        crossAxisAlignment: .start,
        spacing: style.spacing.sm,
        children: [
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(color: colors.muted, borderRadius: style.borderRadius.xl),
            child: const Center(child: HugeIcon(icon: HugeIcons.strokeRoundedVynil01, size: 64)),
          ),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text("Album Name", style: typography.md),
              Text("Artist Name", style: typography.sm.copyWith(color: colors.mutedForeground)),
            ],
          ),
        ],
      ),
    );
  }
}
