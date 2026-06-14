// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArtistSummary {

 String get id; String get name; Kind get kind; List<Image> get images;
/// Create a copy of ArtistSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistSummaryCopyWith<ArtistSummary> get copyWith => _$ArtistSummaryCopyWithImpl<ArtistSummary>(this as ArtistSummary, _$identity);

  /// Serializes this ArtistSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'ArtistSummary(id: $id, name: $name, kind: $kind, images: $images)';
}


}

/// @nodoc
abstract mixin class $ArtistSummaryCopyWith<$Res>  {
  factory $ArtistSummaryCopyWith(ArtistSummary value, $Res Function(ArtistSummary) _then) = _$ArtistSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String name, Kind kind, List<Image> images
});




}
/// @nodoc
class _$ArtistSummaryCopyWithImpl<$Res>
    implements $ArtistSummaryCopyWith<$Res> {
  _$ArtistSummaryCopyWithImpl(this._self, this._then);

  final ArtistSummary _self;
  final $Res Function(ArtistSummary) _then;

/// Create a copy of ArtistSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? images = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as Kind,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<Image>,
  ));
}

}


/// Adds pattern-matching-related methods to [ArtistSummary].
extension ArtistSummaryPatterns on ArtistSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArtistSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArtistSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArtistSummary value)  $default,){
final _that = this;
switch (_that) {
case _ArtistSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArtistSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ArtistSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  Kind kind,  List<Image> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArtistSummary() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  Kind kind,  List<Image> images)  $default,) {final _that = this;
switch (_that) {
case _ArtistSummary():
return $default(_that.id,_that.name,_that.kind,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  Kind kind,  List<Image> images)?  $default,) {final _that = this;
switch (_that) {
case _ArtistSummary() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArtistSummary implements ArtistSummary {
  const _ArtistSummary({required this.id, required this.name, required this.kind, final  List<Image> images = const []}): _images = images;
  factory _ArtistSummary.fromJson(Map<String, dynamic> json) => _$ArtistSummaryFromJson(json);

@override final  String id;
@override final  String name;
@override final  Kind kind;
 final  List<Image> _images;
@override@JsonKey() List<Image> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of ArtistSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArtistSummaryCopyWith<_ArtistSummary> get copyWith => __$ArtistSummaryCopyWithImpl<_ArtistSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArtistSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArtistSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'ArtistSummary(id: $id, name: $name, kind: $kind, images: $images)';
}


}

/// @nodoc
abstract mixin class _$ArtistSummaryCopyWith<$Res> implements $ArtistSummaryCopyWith<$Res> {
  factory _$ArtistSummaryCopyWith(_ArtistSummary value, $Res Function(_ArtistSummary) _then) = __$ArtistSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, Kind kind, List<Image> images
});




}
/// @nodoc
class __$ArtistSummaryCopyWithImpl<$Res>
    implements _$ArtistSummaryCopyWith<$Res> {
  __$ArtistSummaryCopyWithImpl(this._self, this._then);

  final _ArtistSummary _self;
  final $Res Function(_ArtistSummary) _then;

/// Create a copy of ArtistSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? images = null,}) {
  return _then(_ArtistSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as Kind,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<Image>,
  ));
}


}

// dart format on
