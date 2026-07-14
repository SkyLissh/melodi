import "package:flutter/widgets.dart";
import "package:forui/forui.dart";
import "package:hugeicons/hugeicons.dart";
import "package:melodi/theme/theme.dart";

class Completion {
  final String name;
  final String description;

  const Completion(this.name, this.description);
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.colors;
    final style = context.theme.style;

    final completions = [
      const Completion("example 1", "example"),
      const Completion("example 2", "example 2"),
      const Completion("example 3", "example 3"),
      const Completion("example 4", "example 4"),
    ];

    return SizedBox(
      width: 500,
      child: Padding(
        padding: .symmetric(horizontal: style.spacing.lg),
        child: FAutocomplete(
          hint: "What you want to listen?",
          prefixBuilder: (_, _, _) => Padding(
            padding: EdgeInsets.only(left: style.spacing.md),
            child: HugeIcon(icon: HugeIcons.strokeRoundedSearch01, color: colors.mutedForeground),
          ),
          clearable: (value) => value.text.isNotEmpty,
          items: {for (final completion in completions) completion.name: completion},
        ),
      ),
    );
  }
}
