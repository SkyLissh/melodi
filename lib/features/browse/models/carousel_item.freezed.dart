// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarouselItem {

 String get id; Kind get kind; String get name; List<Image> get images; List<ArtistSummary> get artists;
/// Create a copy of CarouselItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarouselItemCopyWith<CarouselItem> get copyWith => _$CarouselItemCopyWithImpl<CarouselItem>(this as CarouselItem, _$identity);

  /// Serializes this CarouselItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarouselItem&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.artists, artists));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kind,name,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(artists));

@override
String toString() {
  return 'CarouselItem(id: $id, kind: $kind, name: $name, images: $images, artists: $artists)';
}


}

/// @nodoc
abstract mixin class $CarouselItemCopyWith<$Res>  {
  factory $CarouselItemCopyWith(CarouselItem value, $Res Function(CarouselItem) _then) = _$CarouselItemCopyWithImpl;
@useResult
$Res call({
 String id, Kind kind, String name, List<Image> images, List<ArtistSummary> artists
});




}
/// @nodoc
class _$CarouselItemCopyWithImpl<$Res>
    implements $CarouselItemCopyWith<$Res> {
  _$CarouselItemCopyWithImpl(this._self, this._then);

  final CarouselItem _self;
  final $Res Function(CarouselItem) _then;

/// Create a copy of CarouselItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? kind = null,Object? name = null,Object? images = null,Object? artists = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as Kind,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<Image>,artists: null == artists ? _self.artists : artists // ignore: cast_nullable_to_non_nullable
as List<ArtistSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [CarouselItem].
extension CarouselItemPatterns on CarouselItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarouselItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarouselItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarouselItem value)  $default,){
final _that = this;
switch (_that) {
case _CarouselItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarouselItem value)?  $default,){
final _that = this;
switch (_that) {
case _CarouselItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Kind kind,  String name,  List<Image> images,  List<ArtistSummary> artists)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CarouselItem() when $default != null:
return $default(_that.id,_that.kind,_that.name,_that.images,_that.artists);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Kind kind,  String name,  List<Image> images,  List<ArtistSummary> artists)  $default,) {final _that = this;
switch (_that) {
case _CarouselItem():
return $default(_that.id,_that.kind,_that.name,_that.images,_that.artists);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Kind kind,  String name,  List<Image> images,  List<ArtistSummary> artists)?  $default,) {final _that = this;
switch (_that) {
case _CarouselItem() when $default != null:
return $default(_that.id,_that.kind,_that.name,_that.images,_that.artists);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CarouselItem implements CarouselItem {
  const _CarouselItem({required this.id, required this.kind, required this.name, final  List<Image> images = const [], final  List<ArtistSummary> artists = const []}): _images = images,_artists = artists;
  factory _CarouselItem.fromJson(Map<String, dynamic> json) => _$CarouselItemFromJson(json);

@override final  String id;
@override final  Kind kind;
@override final  String name;
 final  List<Image> _images;
@override@JsonKey() List<Image> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<ArtistSummary> _artists;
@override@JsonKey() List<ArtistSummary> get artists {
  if (_artists is EqualUnmodifiableListView) return _artists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artists);
}


/// Create a copy of CarouselItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarouselItemCopyWith<_CarouselItem> get copyWith => __$CarouselItemCopyWithImpl<_CarouselItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarouselItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarouselItem&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._artists, _artists));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kind,name,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_artists));

@override
String toString() {
  return 'CarouselItem(id: $id, kind: $kind, name: $name, images: $images, artists: $artists)';
}


}

/// @nodoc
abstract mixin class _$CarouselItemCopyWith<$Res> implements $CarouselItemCopyWith<$Res> {
  factory _$CarouselItemCopyWith(_CarouselItem value, $Res Function(_CarouselItem) _then) = __$CarouselItemCopyWithImpl;
@override @useResult
$Res call({
 String id, Kind kind, String name, List<Image> images, List<ArtistSummary> artists
});




}
/// @nodoc
class __$CarouselItemCopyWithImpl<$Res>
    implements _$CarouselItemCopyWith<$Res> {
  __$CarouselItemCopyWithImpl(this._self, this._then);

  final _CarouselItem _self;
  final $Res Function(_CarouselItem) _then;

/// Create a copy of CarouselItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? kind = null,Object? name = null,Object? images = null,Object? artists = null,}) {
  return _then(_CarouselItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as Kind,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<Image>,artists: null == artists ? _self._artists : artists // ignore: cast_nullable_to_non_nullable
as List<ArtistSummary>,
  ));
}


}

// dart format on
