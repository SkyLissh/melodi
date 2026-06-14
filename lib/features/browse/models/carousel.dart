import "package:freezed_annotation/freezed_annotation.dart";

import "carousel_item.dart";

part "carousel.freezed.dart";
part "carousel.g.dart";

@freezed
abstract class Carousel with _$Carousel {
  const factory Carousel({
    required String title,
    required List<CarouselItem> items,
    String? description,
  }) = _Carousel;

  factory Carousel.fromJson(Map<String, dynamic> json) => _$CarouselFromJson(json);
}
