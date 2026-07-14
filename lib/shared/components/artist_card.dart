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

    final animatedController = useAnimationController(duration: const Duration(milliseconds: 300));
    final opacity = useMemoized(
      () => Tween<double>(
        begin: 0,
        end: 1,
      ).animate(CurvedAnimation(parent: animatedController, curve: Curves.easeInOutCubic)),
      [animatedController],
    );
    final scale = useMemoized(
      () => Tween<double>(
        begin: 1.0,
        end: 1.2,
      ).animate(CurvedAnimation(parent: animatedController, curve: Curves.easeInOutCubic)),
      [animatedController],
    );

    return FTappable.static(
      onHoverChange: (value) => value ? animatedController.forward() : animatedController.reverse(),
      onPress: () => print("Clicked Artist"),
      child: Column(
        spacing: style.spacing.sm,
        children: [
          Stack(
            children: [
              Container(
                clipBehavior: .hardEdge,
                height: 180,
                width: 180,
                decoration: BoxDecoration(color: colors.muted, shape: .circle),
                child: ScaleTransition(
                  scale: scale,
                  child: imageUrl != null
                      ? Image.network(imageUrl!)
                      : const Center(child: HugeIcon(icon: HugeIcons.strokeRoundedUser, size: 64)),
                ),
              ),
              Positioned.fill(
                child: FadeTransition(
                  opacity: opacity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: colors.muted.withValues(alpha: 0.5),
                      shape: .circle,
                    ),
                    child: const Center(
                      child: HugeIcon(icon: HugeIcons.strokeRoundedPlay, size: 36),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(name, style: typography.md),
        ],
      ),
    );
  }
}
