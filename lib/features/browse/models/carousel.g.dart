// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Carousel _$CarouselFromJson(Map<String, dynamic> json) => _Carousel(
  title: json['title'] as String,
  items: (json['items'] as List<dynamic>)
      .map((e) => CarouselItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  description: json['description'] as String?,
);

Map<String, dynamic> _$CarouselToJson(_Carousel instance) => <String, dynamic>{
  'title': instance.title,
  'items': instance.items,
  'description': instance.description,
};
