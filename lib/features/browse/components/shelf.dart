import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:forui/forui.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/theme/theme.dart";

class Shelf extends HookWidget {
  final Widget title;
  final Widget? subtitle;
  final List<Widget> items;

  const Shelf({required this.title, required this.items, super.key, this.subtitle});

  @override
  Widget build(BuildContext context) {
    final style = context.theme.style;
    final typography = context.theme.typography;
    final colors = context.theme.colors;
    final breakpoints = context.theme.breakpoints;

    final windowWidth = MediaQuery.of(context).size.width;

    const scrollOffset = 800.0;
    final controller = useScrollController();

    final maxWidth = useMemoized(
      () => switch (windowWidth) {
        _ when windowWidth < breakpoints.sm => double.infinity,
        _ when windowWidth < breakpoints.md => 800.0,
        _ when windowWidth < breakpoints.lg => 1200.0,
        _ => 1400.0,
      },
      [windowWidth],
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        return Column(
          spacing: style.spacing.lg,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth),
              child: Row(
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
                          await controller.animateTo(
                            (controller.offset - scrollOffset).clamp(
                              0,
                              controller.position.maxScrollExtent,
                            ),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: const HugeIcon(icon: HugeIcons.strokeRoundedArrowLeft01),
                      ),
                      FButton.icon(
                        size: .xs,
                        onPress: () async {
                          await controller.animateTo(
                            (controller.offset + scrollOffset).clamp(
                              0,
                              controller.position.maxScrollExtent,
                            ),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: const HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            HookBuilder(
              builder: (context) {
                final inset = useMemoized(() {
                  if (width <= maxWidth) return 0.0;

                  return (width - maxWidth) / 2;
                }, [width, maxWidth]);

                return SizedBox(
                  height: 230,
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(
                      context,
                    ).copyWith(scrollbars: false, dragDevices: {.touch, .mouse}),
                    child: ListView.separated(
                      padding: .symmetric(horizontal: inset),
                      physics: const BouncingScrollPhysics(),
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (_, index) => items[index],
                      separatorBuilder: (_, index) => SizedBox(width: style.spacing.lg),
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
