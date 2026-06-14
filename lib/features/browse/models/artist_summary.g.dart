// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArtistSummary _$ArtistSummaryFromJson(Map<String, dynamic> json) =>
    _ArtistSummary(
      id: json['id'] as String,
      name: json['name'] as String,
      kind: $enumDecode(_$KindEnumMap, json['kind']),
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ArtistSummaryToJson(_ArtistSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kind': _$KindEnumMap[instance.kind]!,
      'images': instance.images,
    };

const _$KindEnumMap = {
  Kind.track: 'track',
  Kind.album: 'album',
  Kind.artist: 'artist',
};
