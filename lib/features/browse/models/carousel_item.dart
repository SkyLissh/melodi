import "package:freezed_annotation/freezed_annotation.dart";
import "package:melodi/shared/shared.dart";

import "artist_summary.dart";

part "carousel_item.freezed.dart";
part "carousel_item.g.dart";

@freezed
abstract class CarouselItem with _$CarouselItem {
  const factory CarouselItem({
    required String id,
    required Kind kind,
    required String name,
    @Default([]) List<Image> images,
    @Default([]) List<ArtistSummary> artists,
  }) = _CarouselItem;

  factory CarouselItem.fromJson(Map<String, dynamic> json) => _$CarouselItemFromJson(json);
}
