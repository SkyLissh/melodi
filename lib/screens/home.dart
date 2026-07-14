import "package:auto_route/auto_route.dart";
import "package:flutter/widgets.dart";
import "package:forui/forui.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:melodi/features/browse/browse.dart";
import "package:melodi/features/library/library.dart";
import "package:melodi/features/search/search.dart";
import "package:melodi/features/window/window.dart";
import "package:melodi/shared/shared.dart";
import "package:melodi/theme/theme.dart";

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = context.theme.style;
    final carousels = ref.watch(carouselsProvider);

    final window = useWindow();

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

                SearchBar(),

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
