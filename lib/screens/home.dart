import "package:auto_route/auto_route.dart";
import "package:flutter/widgets.dart";
import "package:forui/forui.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/features/browse/browse.dart";
import "package:melodi/features/library/library.dart";
import "package:melodi/features/window/window.dart";
import "package:melodi/shared/shared.dart";
import "package:melodi/theme/theme.dart";

class Completion {
  final String name;
  final String description;

  const Completion(this.name, this.description);
}

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = context.theme.style;
    final colors = context.theme.colors;
    final carousels = ref.watch(carouselsProvider);

    final window = useWindow();

    final completions = [
      const Completion("example 1", "example"),
      const Completion("example 2", "example 2"),
      const Completion("example 3", "example 3"),
      const Completion("example 4", "example 4"),
    ];

    return FScaffold(
      sidebar: Padding(padding: style.padding.md.copyWith(right: 0), child: const Sidebar()),
      child: Column(
        children: [
          Padding(
            padding: .only(top: style.spacing.xs),
            child: Row(
              children: [
                Expanded(
                  child: WindowDragHandle(
                    onDrag: () => window.startDrag(),
                    onMaximize: () => window.toggleMaximize(),
                    onSecondaryTap: () => window.showPopupMenu(),
                  ),
                ),

                SizedBox(
                  width: 500,
                  child: Padding(
                    padding: .symmetric(horizontal: style.spacing.lg),
                    child: FAutocomplete(
                      hint: "What you want to listen?",
                      prefixBuilder: (_, _, _) => Padding(
                        padding: EdgeInsets.only(left: style.spacing.md),
                        child: HugeIcon(
                          icon: HugeIcons.strokeRoundedSearch01,
                          color: colors.mutedForeground,
                        ),
                      ),
                      clearable: (value) => value.text.isNotEmpty,
                      items: {for (final completion in completions) completion.name: completion},
                    ),
                  ),
                ),

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
          ),
          switch (carousels) {
            AsyncData(:final value) => Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: style.spacing.lg,
                  children: value.map((carousel) {
                    return Shelf(
                      title: Text(carousel.title),
                      subtitle: carousel.description != null ? Text(carousel.description!) : null,
                      items: carousel.items.map((item) {
                        return switch (item.kind) {
                          .artist => ArtistCard(
                            name: item.name,
                            imageUrl: item.images.isNotEmpty ? item.images.first.url : null,
                          ),
                          _ => AlbumCard(
                            name: item.name,
                            artistName: item.artists.isNotEmpty
                                ? item.artists.first.name
                                : "Unknown Artist",
                            imageUrl: item.images.isNotEmpty ? item.images.first.url : null,
                          ),
                        };
                      }).toList(),
                    );
                  }).toList(),
                ),
              ),
            ),
            AsyncLoading() => const Expanded(
              child: Center(child: FCircularProgress.loader(size: .xl)),
            ),
            AsyncError(:final error) => Expanded(child: Center(child: Text(error.toString()))),
          },
        ],
      ),
    );
  }
}
