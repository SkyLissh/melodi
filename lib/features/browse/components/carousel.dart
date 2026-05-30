import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/widgets.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:forui/forui.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/shared/shared.dart";
import "package:melodi/theme/theme.dart";

class Carousel extends HookWidget {
  final Widget title;
  final Widget? subtitle;
  final List<Widget> items;

  const Carousel({required this.title, required this.items, super.key, this.subtitle});

  @override
  Widget build(BuildContext context) {
    final style = context.theme.style;
    final typography = context.theme.typography;
    final colors = context.theme.colors;

    final page = useState(0);
    final controller = useCarouselSliderController();

    return Column(
      spacing: style.spacing.lg,
      children: [
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              crossAxisAlignment: .start,
              children: [
                DefaultTextStyle(style: typography.xl, child: title),
                if (subtitle != null) ...[
                  DefaultTextStyle(
                    style: typography.sm.copyWith(color: colors.mutedForeground),
                    child: subtitle!,
                  ),
                ],
              ],
            ),
            Row(
              spacing: style.spacing.md,
              children: [
                FButton.icon(
                  size: .xs,
                  onPress: () async {
                    await controller.animateToPage(page.value - 5);
                  },
                  child: const HugeIcon(icon: HugeIcons.strokeRoundedArrowLeft01),
                ),
                FButton.icon(
                  size: .xs,
                  onPress: () async {
                    await controller.animateToPage(page.value + 5);
                  },
                  child: const HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01),
                ),
              ],
            ),
          ],
        ),
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              page.value = index;
            },
            enableInfiniteScroll: false,
            viewportFraction: 0.2,
            animateToClosest: false,
            padEnds: false,
            height: 240,
          ),
          items: items,
        ),
      ],
    );
  }
}
