import "package:flutter/widgets.dart";
import "package:forui/forui.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/extensions/extensions.dart";
import "package:melodi/theme/theme.dart";

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final style = context.theme.style;
    final typography = context.theme.typography;
    final colors = context.theme.colors;

    return FSidebar(
      header: Padding(
        padding: style.padding.sm,
        child: Column(
          children: [
            Row(
              spacing: style.spacing.md,
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedMusic3, color: colors.palette.spaceIndigo200),
                Text(
                  "Melodi",
                  style: typography.xl2.copyWith(color: colors.palette.spaceIndigo200),
                ),
              ],
            ),
          ],
        ),
      ),
      footer: Column(
        spacing: style.spacing.md,
        children: [
          FSidebarItem(
            onPress: () {},
            icon: const HugeIcon(icon: HugeIcons.strokeRoundedSettings01),
            label: Text(l10n.settings),
          ),
          Row(
        spacing: style.spacing.md,
            children: [
              FAvatar(image: const AssetImage("")),
              const Column(children: [Text("Alisson Hernandez Lopez")]),
            ],
          ),
        ],
      ),
      children: [
        FSidebarItem(
          onPress: () {},
          icon: const HugeIcon(icon: HugeIcons.strokeRoundedHome01),
          label: Text(l10n.home),
        ),
        FSidebarItem(
          onPress: () {},
          icon: const HugeIcon(icon: HugeIcons.strokeRoundedLibraries),
          label: Text(l10n.library),
        ),
        FSidebarItem(
          onPress: () {},
          icon: const HugeIcon(icon: HugeIcons.strokeRoundedPlaylist02),
          label: Text(l10n.playlists),
        ),
        FSidebarItem(
          onPress: () {},
          icon: const HugeIcon(icon: HugeIcons.strokeRoundedVynil02),
          label: Text(l10n.albums),
        ),
        FSidebarItem(
          onPress: () {},
          icon: const HugeIcon(icon: HugeIcons.strokeRoundedUser),
          label: Text(l10n.artists),
        ),
        FSidebarItem(
          onPress: () {},
          icon: const HugeIcon(icon: HugeIcons.strokeRoundedFavourite),
          label: Text(l10n.favorites),
        ),
      ],
    );
  }
}
