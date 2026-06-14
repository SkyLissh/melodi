import "package:freezed_annotation/freezed_annotation.dart";
import "package:melodi/shared/shared.dart";

part "artist_summary.freezed.dart";
part "artist_summary.g.dart";

@freezed
abstract class ArtistSummary with _$ArtistSummary {
  const factory ArtistSummary({
    required String id,
    required String name,
    required Kind kind,
    @Default([]) List<Image> images,
  }) = _ArtistSummary;

  factory ArtistSummary.fromJson(Map<String, dynamic> json) => _$ArtistSummaryFromJson(json);
}
