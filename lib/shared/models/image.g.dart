// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Image _$ImageFromJson(Map<String, dynamic> json) => _Image(
  url: json['url'] as String,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImageToJson(_Image instance) => <String, dynamic>{
  'url': instance.url,
  'width': instance.width,
  'height': instance.height,
};
