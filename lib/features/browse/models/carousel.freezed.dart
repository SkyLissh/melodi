// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Carousel {

 String get title; List<CarouselItem> get items; String? get description;
/// Create a copy of Carousel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarouselCopyWith<Carousel> get copyWith => _$CarouselCopyWithImpl<Carousel>(this as Carousel, _$identity);

  /// Serializes this Carousel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Carousel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(items),description);

@override
String toString() {
  return 'Carousel(title: $title, items: $items, description: $description)';
}


}

/// @nodoc
abstract mixin class $CarouselCopyWith<$Res>  {
  factory $CarouselCopyWith(Carousel value, $Res Function(Carousel) _then) = _$CarouselCopyWithImpl;
@useResult
$Res call({
 String title, List<CarouselItem> items, String? description
});




}
/// @nodoc
class _$CarouselCopyWithImpl<$Res>
    implements $CarouselCopyWith<$Res> {
  _$CarouselCopyWithImpl(this._self, this._then);

  final Carousel _self;
  final $Res Function(Carousel) _then;

/// Create a copy of Carousel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? items = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CarouselItem>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Carousel].
extension CarouselPatterns on Carousel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Carousel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Carousel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Carousel value)  $default,){
final _that = this;
switch (_that) {
case _Carousel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Carousel value)?  $default,){
final _that = this;
switch (_that) {
case _Carousel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<CarouselItem> items,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Carousel() when $default != null:
return $default(_that.title,_that.items,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<CarouselItem> items,  String? description)  $default,) {final _that = this;
switch (_that) {
case _Carousel():
return $default(_that.title,_that.items,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<CarouselItem> items,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _Carousel() when $default != null:
return $default(_that.title,_that.items,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Carousel implements Carousel {
  const _Carousel({required this.title, required final  List<CarouselItem> items, this.description}): _items = items;
  factory _Carousel.fromJson(Map<String, dynamic> json) => _$CarouselFromJson(json);

@override final  String title;
 final  List<CarouselItem> _items;
@override List<CarouselItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? description;

/// Create a copy of Carousel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarouselCopyWith<_Carousel> get copyWith => __$CarouselCopyWithImpl<_Carousel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarouselToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Carousel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_items),description);

@override
String toString() {
  return 'Carousel(title: $title, items: $items, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CarouselCopyWith<$Res> implements $CarouselCopyWith<$Res> {
  factory _$CarouselCopyWith(_Carousel value, $Res Function(_Carousel) _then) = __$CarouselCopyWithImpl;
@override @useResult
$Res call({
 String title, List<CarouselItem> items, String? description
});




}
/// @nodoc
class __$CarouselCopyWithImpl<$Res>
    implements _$CarouselCopyWith<$Res> {
  __$CarouselCopyWithImpl(this._self, this._then);

  final _Carousel _self;
  final $Res Function(_Carousel) _then;

/// Create a copy of Carousel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? items = null,Object? description = freezed,}) {
  return _then(_Carousel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CarouselItem>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
