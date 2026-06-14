// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarouselItem _$CarouselItemFromJson(Map<String, dynamic> json) =>
    _CarouselItem(
      id: json['id'] as String,
      kind: $enumDecode(_$KindEnumMap, json['kind']),
      name: json['name'] as String,
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      artists:
          (json['artists'] as List<dynamic>?)
              ?.map((e) => ArtistSummary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CarouselItemToJson(_CarouselItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': _$KindEnumMap[instance.kind]!,
      'name': instance.name,
      'images': instance.images,
      'artists': instance.artists,
    };

const _$KindEnumMap = {
  Kind.track: 'track',
  Kind.album: 'album',
  Kind.artist: 'artist',
};
