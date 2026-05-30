import "package:auto_route/auto_route.dart";
import "package:flutter/widgets.dart";
import "package:flutter_hooks/flutter_hooks.dart" hide useCarouselController;
import "package:forui/forui.dart";
import "package:melodi/features/browse/browse.dart";
import "package:melodi/features/library/library.dart";
import "package:melodi/features/window/window.dart";
import "package:melodi/shared/shared.dart";
import "package:melodi/theme/theme.dart";

@RoutePage()
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.theme.style;

    final window = useWindow();

    return FScaffold(
      sidebar: Padding(padding: style.padding.md.copyWith(right: 0), child: const Sidebar()),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: WindowDragHandle(
                  onDrag: () => window.startDrag(),
                  onMaximize: () => window.toggleMaximize(),
                  onSecondaryTap: () => window.showPopupMenu(),
                ),
              ),
              WindowButtons(
                onMaximize: () => window.toggleMaximize(),
                onMinimize: () => window.minimize(),
                onClose: () => window.close(),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: style.spacing.lg,
                children: [
                  Carousel(
                    title: const Text("Popular Artists"),
                    subtitle: const Text("Listen to the most played artists"),
                    items: List.generate(20, (index) => const ArtistCard()),
                  ),
                  Carousel(
                    title: const Text("Popular Albums"),
                    subtitle: const Text("Listen to the most played albums"),
                    items: List.generate(20, (index) => const AlbumCard()),
                  ),
                  Carousel(
                    title: const Text("Popular Artists"),
                    subtitle: const Text("Listen to the most played artists"),
                    items: List.generate(20, (index) => const ArtistCard()),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
