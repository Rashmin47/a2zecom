// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telescope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Telescope {

 String? get id; set id(String? value); String get model; set model(String value); Brand get brand; set brand(Brand value); String get type; set type(String value); String get dimension; set dimension(String value); num get weightInPound; set weightInPound(num value); String get focusType; set focusType(String value); num get lensDiameterInMM; set lensDiameterInMM(num value); String get mountDescription; set mountDescription(String value); num get price; set price(num value); num get stock; set stock(num value); num get avgRating; set avgRating(num value); num get discount; set discount(num value); ImageModel get thumbnail; set thumbnail(ImageModel value); List<ImageModel> get additionalImage; set additionalImage(List<ImageModel> value); String? get description; set description(String? value);
/// Create a copy of Telescope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelescopeCopyWith<Telescope> get copyWith => _$TelescopeCopyWithImpl<Telescope>(this as Telescope, _$identity);

  /// Serializes this Telescope to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Telescope(id: $id, model: $model, brand: $brand, type: $type, dimension: $dimension, weightInPound: $weightInPound, focusType: $focusType, lensDiameterInMM: $lensDiameterInMM, mountDescription: $mountDescription, price: $price, stock: $stock, avgRating: $avgRating, discount: $discount, thumbnail: $thumbnail, additionalImage: $additionalImage, description: $description)';
}


}

/// @nodoc
abstract mixin class $TelescopeCopyWith<$Res>  {
  factory $TelescopeCopyWith(Telescope value, $Res Function(Telescope) _then) = _$TelescopeCopyWithImpl;
@useResult
$Res call({
 String? id, String model, Brand brand, String type, String dimension, num weightInPound, String focusType, num lensDiameterInMM, String mountDescription, num price, num stock, num avgRating, num discount, ImageModel thumbnail, List<ImageModel> additionalImage, String? description
});


$BrandCopyWith<$Res> get brand;$ImageModelCopyWith<$Res> get thumbnail;

}
/// @nodoc
class _$TelescopeCopyWithImpl<$Res>
    implements $TelescopeCopyWith<$Res> {
  _$TelescopeCopyWithImpl(this._self, this._then);

  final Telescope _self;
  final $Res Function(Telescope) _then;

/// Create a copy of Telescope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? model = null,Object? brand = null,Object? type = null,Object? dimension = null,Object? weightInPound = null,Object? focusType = null,Object? lensDiameterInMM = null,Object? mountDescription = null,Object? price = null,Object? stock = null,Object? avgRating = null,Object? discount = null,Object? thumbnail = null,Object? additionalImage = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as Brand,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,weightInPound: null == weightInPound ? _self.weightInPound : weightInPound // ignore: cast_nullable_to_non_nullable
as num,focusType: null == focusType ? _self.focusType : focusType // ignore: cast_nullable_to_non_nullable
as String,lensDiameterInMM: null == lensDiameterInMM ? _self.lensDiameterInMM : lensDiameterInMM // ignore: cast_nullable_to_non_nullable
as num,mountDescription: null == mountDescription ? _self.mountDescription : mountDescription // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as num,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as ImageModel,additionalImage: null == additionalImage ? _self.additionalImage : additionalImage // ignore: cast_nullable_to_non_nullable
as List<ImageModel>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Telescope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCopyWith<$Res> get brand {
  
  return $BrandCopyWith<$Res>(_self.brand, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of Telescope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageModelCopyWith<$Res> get thumbnail {
  
  return $ImageModelCopyWith<$Res>(_self.thumbnail, (value) {
    return _then(_self.copyWith(thumbnail: value));
  });
}
}


/// Adds pattern-matching-related methods to [Telescope].
extension TelescopePatterns on Telescope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Telescope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Telescope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Telescope value)  $default,){
final _that = this;
switch (_that) {
case _Telescope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Telescope value)?  $default,){
final _that = this;
switch (_that) {
case _Telescope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String model,  Brand brand,  String type,  String dimension,  num weightInPound,  String focusType,  num lensDiameterInMM,  String mountDescription,  num price,  num stock,  num avgRating,  num discount,  ImageModel thumbnail,  List<ImageModel> additionalImage,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Telescope() when $default != null:
return $default(_that.id,_that.model,_that.brand,_that.type,_that.dimension,_that.weightInPound,_that.focusType,_that.lensDiameterInMM,_that.mountDescription,_that.price,_that.stock,_that.avgRating,_that.discount,_that.thumbnail,_that.additionalImage,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String model,  Brand brand,  String type,  String dimension,  num weightInPound,  String focusType,  num lensDiameterInMM,  String mountDescription,  num price,  num stock,  num avgRating,  num discount,  ImageModel thumbnail,  List<ImageModel> additionalImage,  String? description)  $default,) {final _that = this;
switch (_that) {
case _Telescope():
return $default(_that.id,_that.model,_that.brand,_that.type,_that.dimension,_that.weightInPound,_that.focusType,_that.lensDiameterInMM,_that.mountDescription,_that.price,_that.stock,_that.avgRating,_that.discount,_that.thumbnail,_that.additionalImage,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String model,  Brand brand,  String type,  String dimension,  num weightInPound,  String focusType,  num lensDiameterInMM,  String mountDescription,  num price,  num stock,  num avgRating,  num discount,  ImageModel thumbnail,  List<ImageModel> additionalImage,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _Telescope() when $default != null:
return $default(_that.id,_that.model,_that.brand,_that.type,_that.dimension,_that.weightInPound,_that.focusType,_that.lensDiameterInMM,_that.mountDescription,_that.price,_that.stock,_that.avgRating,_that.discount,_that.thumbnail,_that.additionalImage,_that.description);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Telescope implements Telescope {
   _Telescope({this.id, required this.model, required this.brand, required this.type, required this.dimension, required this.weightInPound, required this.focusType, required this.lensDiameterInMM, required this.mountDescription, required this.price, required this.stock, this.avgRating = 0.0, this.discount = 0, required this.thumbnail, required this.additionalImage, this.description});
  factory _Telescope.fromJson(Map<String, dynamic> json) => _$TelescopeFromJson(json);

@override  String? id;
@override  String model;
@override  Brand brand;
@override  String type;
@override  String dimension;
@override  num weightInPound;
@override  String focusType;
@override  num lensDiameterInMM;
@override  String mountDescription;
@override  num price;
@override  num stock;
@override@JsonKey()  num avgRating;
@override@JsonKey()  num discount;
@override  ImageModel thumbnail;
@override  List<ImageModel> additionalImage;
@override  String? description;

/// Create a copy of Telescope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelescopeCopyWith<_Telescope> get copyWith => __$TelescopeCopyWithImpl<_Telescope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelescopeToJson(this, );
}



@override
String toString() {
  return 'Telescope(id: $id, model: $model, brand: $brand, type: $type, dimension: $dimension, weightInPound: $weightInPound, focusType: $focusType, lensDiameterInMM: $lensDiameterInMM, mountDescription: $mountDescription, price: $price, stock: $stock, avgRating: $avgRating, discount: $discount, thumbnail: $thumbnail, additionalImage: $additionalImage, description: $description)';
}


}

/// @nodoc
abstract mixin class _$TelescopeCopyWith<$Res> implements $TelescopeCopyWith<$Res> {
  factory _$TelescopeCopyWith(_Telescope value, $Res Function(_Telescope) _then) = __$TelescopeCopyWithImpl;
@override @useResult
$Res call({
 String? id, String model, Brand brand, String type, String dimension, num weightInPound, String focusType, num lensDiameterInMM, String mountDescription, num price, num stock, num avgRating, num discount, ImageModel thumbnail, List<ImageModel> additionalImage, String? description
});


@override $BrandCopyWith<$Res> get brand;@override $ImageModelCopyWith<$Res> get thumbnail;

}
/// @nodoc
class __$TelescopeCopyWithImpl<$Res>
    implements _$TelescopeCopyWith<$Res> {
  __$TelescopeCopyWithImpl(this._self, this._then);

  final _Telescope _self;
  final $Res Function(_Telescope) _then;

/// Create a copy of Telescope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? model = null,Object? brand = null,Object? type = null,Object? dimension = null,Object? weightInPound = null,Object? focusType = null,Object? lensDiameterInMM = null,Object? mountDescription = null,Object? price = null,Object? stock = null,Object? avgRating = null,Object? discount = null,Object? thumbnail = null,Object? additionalImage = null,Object? description = freezed,}) {
  return _then(_Telescope(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as Brand,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,weightInPound: null == weightInPound ? _self.weightInPound : weightInPound // ignore: cast_nullable_to_non_nullable
as num,focusType: null == focusType ? _self.focusType : focusType // ignore: cast_nullable_to_non_nullable
as String,lensDiameterInMM: null == lensDiameterInMM ? _self.lensDiameterInMM : lensDiameterInMM // ignore: cast_nullable_to_non_nullable
as num,mountDescription: null == mountDescription ? _self.mountDescription : mountDescription // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as num,avgRating: null == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as num,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as num,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as ImageModel,additionalImage: null == additionalImage ? _self.additionalImage : additionalImage // ignore: cast_nullable_to_non_nullable
as List<ImageModel>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Telescope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCopyWith<$Res> get brand {
  
  return $BrandCopyWith<$Res>(_self.brand, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of Telescope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageModelCopyWith<$Res> get thumbnail {
  
  return $ImageModelCopyWith<$Res>(_self.thumbnail, (value) {
    return _then(_self.copyWith(thumbnail: value));
  });
}
}

// dart format on
