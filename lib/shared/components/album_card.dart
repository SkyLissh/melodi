import "package:flutter/widgets.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:forui/forui.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/theme/theme.dart";

class AlbumCard extends HookWidget {
  final String name;
  final String artistName;
  final String? imageUrl;

  const AlbumCard({required this.name, required this.artistName, super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final typography = context.theme.typography;
    final style = context.theme.style;
    final colors = context.theme.colors;

    final animationController = useAnimationController(duration: const Duration(milliseconds: 200));

    final opacity = useMemoized(
      () => Tween<double>(
        begin: 0,
        end: 1,
      ).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOutCubic)),
      [animationController],
    );
    final slide = useMemoized(
      () => Tween<Offset>(
        begin: const Offset(0, 0.2),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOutCubic)),
      [animationController],
    );
    final scale = useMemoized(
      () => Tween<double>(
        begin: 1.0,
        end: 1.2,
      ).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOutCubic)),
      [animationController],
    );

    return Stack(
      children: [
        FTappable.static(
          onHoverChange: (value) {
            if (value) {
              animationController.forward();
            } else {
              animationController.reverse();
            }
          },
          onPress: () => print("Clicked Album"),
          child: Column(
            crossAxisAlignment: .start,
            spacing: style.spacing.sm,
            children: [
              Stack(
                children: [
                  Container(
                    clipBehavior: .hardEdge,
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      color: colors.muted,
                      borderRadius: style.borderRadius.xl,
                    ),
                    child: ScaleTransition(
                      scale: scale,
                      child: imageUrl != null
                          ? Image.network(imageUrl!)
                          : const Center(
                              child: HugeIcon(icon: HugeIcons.strokeRoundedVynil01, size: 64),
                            ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: style.spacing.md,
                    right: style.spacing.md,
                    child: FadeTransition(
                      opacity: opacity,
                      child: SlideTransition(
                        position: slide,
                        child: Align(
                          alignment: .bottomRight,
                          child: FButton.icon(
                            onPress: () {},
                            variant: .primary,
                            style: .delta(
                              decoration: .delta([
                                .base(.boxDelta(borderRadius: style.borderRadius.pill)),
                                .match({
                                  .hovered,
                                  .pressed,
                                }, .boxDelta(borderRadius: style.borderRadius.pill)),
                              ]),
                            ),
                            child: const HugeIcon(icon: HugeIcons.strokeRoundedPlay),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(name, style: typography.md),
                  Text(artistName, style: typography.sm.copyWith(color: colors.mutedForeground)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
