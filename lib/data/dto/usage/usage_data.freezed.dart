// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsageData {

 int get usageId; int get userId; String get utilityType; double get usageAmount; String get unit; int get currentCharge; String get measuredAt; String get createdAt;
/// Create a copy of UsageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageDataCopyWith<UsageData> get copyWith => _$UsageDataCopyWithImpl<UsageData>(this as UsageData, _$identity);

  /// Serializes this UsageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageData&&(identical(other.usageId, usageId) || other.usageId == usageId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.utilityType, utilityType) || other.utilityType == utilityType)&&(identical(other.usageAmount, usageAmount) || other.usageAmount == usageAmount)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.currentCharge, currentCharge) || other.currentCharge == currentCharge)&&(identical(other.measuredAt, measuredAt) || other.measuredAt == measuredAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usageId,userId,utilityType,usageAmount,unit,currentCharge,measuredAt,createdAt);

@override
String toString() {
  return 'UsageData(usageId: $usageId, userId: $userId, utilityType: $utilityType, usageAmount: $usageAmount, unit: $unit, currentCharge: $currentCharge, measuredAt: $measuredAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UsageDataCopyWith<$Res>  {
  factory $UsageDataCopyWith(UsageData value, $Res Function(UsageData) _then) = _$UsageDataCopyWithImpl;
@useResult
$Res call({
 int usageId, int userId, String utilityType, double usageAmount, String unit, int currentCharge, String measuredAt, String createdAt
});




}
/// @nodoc
class _$UsageDataCopyWithImpl<$Res>
    implements $UsageDataCopyWith<$Res> {
  _$UsageDataCopyWithImpl(this._self, this._then);

  final UsageData _self;
  final $Res Function(UsageData) _then;

/// Create a copy of UsageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usageId = null,Object? userId = null,Object? utilityType = null,Object? usageAmount = null,Object? unit = null,Object? currentCharge = null,Object? measuredAt = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
usageId: null == usageId ? _self.usageId : usageId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,utilityType: null == utilityType ? _self.utilityType : utilityType // ignore: cast_nullable_to_non_nullable
as String,usageAmount: null == usageAmount ? _self.usageAmount : usageAmount // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,currentCharge: null == currentCharge ? _self.currentCharge : currentCharge // ignore: cast_nullable_to_non_nullable
as int,measuredAt: null == measuredAt ? _self.measuredAt : measuredAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UsageData].
extension UsageDataPatterns on UsageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsageData value)  $default,){
final _that = this;
switch (_that) {
case _UsageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsageData value)?  $default,){
final _that = this;
switch (_that) {
case _UsageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int usageId,  int userId,  String utilityType,  double usageAmount,  String unit,  int currentCharge,  String measuredAt,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsageData() when $default != null:
return $default(_that.usageId,_that.userId,_that.utilityType,_that.usageAmount,_that.unit,_that.currentCharge,_that.measuredAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int usageId,  int userId,  String utilityType,  double usageAmount,  String unit,  int currentCharge,  String measuredAt,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _UsageData():
return $default(_that.usageId,_that.userId,_that.utilityType,_that.usageAmount,_that.unit,_that.currentCharge,_that.measuredAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int usageId,  int userId,  String utilityType,  double usageAmount,  String unit,  int currentCharge,  String measuredAt,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UsageData() when $default != null:
return $default(_that.usageId,_that.userId,_that.utilityType,_that.usageAmount,_that.unit,_that.currentCharge,_that.measuredAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsageData implements UsageData {
  const _UsageData({required this.usageId, required this.userId, required this.utilityType, required this.usageAmount, required this.unit, required this.currentCharge, required this.measuredAt, required this.createdAt});
  factory _UsageData.fromJson(Map<String, dynamic> json) => _$UsageDataFromJson(json);

@override final  int usageId;
@override final  int userId;
@override final  String utilityType;
@override final  double usageAmount;
@override final  String unit;
@override final  int currentCharge;
@override final  String measuredAt;
@override final  String createdAt;

/// Create a copy of UsageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageDataCopyWith<_UsageData> get copyWith => __$UsageDataCopyWithImpl<_UsageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageData&&(identical(other.usageId, usageId) || other.usageId == usageId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.utilityType, utilityType) || other.utilityType == utilityType)&&(identical(other.usageAmount, usageAmount) || other.usageAmount == usageAmount)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.currentCharge, currentCharge) || other.currentCharge == currentCharge)&&(identical(other.measuredAt, measuredAt) || other.measuredAt == measuredAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usageId,userId,utilityType,usageAmount,unit,currentCharge,measuredAt,createdAt);

@override
String toString() {
  return 'UsageData(usageId: $usageId, userId: $userId, utilityType: $utilityType, usageAmount: $usageAmount, unit: $unit, currentCharge: $currentCharge, measuredAt: $measuredAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UsageDataCopyWith<$Res> implements $UsageDataCopyWith<$Res> {
  factory _$UsageDataCopyWith(_UsageData value, $Res Function(_UsageData) _then) = __$UsageDataCopyWithImpl;
@override @useResult
$Res call({
 int usageId, int userId, String utilityType, double usageAmount, String unit, int currentCharge, String measuredAt, String createdAt
});




}
/// @nodoc
class __$UsageDataCopyWithImpl<$Res>
    implements _$UsageDataCopyWith<$Res> {
  __$UsageDataCopyWithImpl(this._self, this._then);

  final _UsageData _self;
  final $Res Function(_UsageData) _then;

/// Create a copy of UsageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usageId = null,Object? userId = null,Object? utilityType = null,Object? usageAmount = null,Object? unit = null,Object? currentCharge = null,Object? measuredAt = null,Object? createdAt = null,}) {
  return _then(_UsageData(
usageId: null == usageId ? _self.usageId : usageId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,utilityType: null == utilityType ? _self.utilityType : utilityType // ignore: cast_nullable_to_non_nullable
as String,usageAmount: null == usageAmount ? _self.usageAmount : usageAmount // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,currentCharge: null == currentCharge ? _self.currentCharge : currentCharge // ignore: cast_nullable_to_non_nullable
as int,measuredAt: null == measuredAt ? _self.measuredAt : measuredAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UsageDataResponse {

 bool get success; List<UsageData> get data;
/// Create a copy of UsageDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageDataResponseCopyWith<UsageDataResponse> get copyWith => _$UsageDataResponseCopyWithImpl<UsageDataResponse>(this as UsageDataResponse, _$identity);

  /// Serializes this UsageDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageDataResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UsageDataResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $UsageDataResponseCopyWith<$Res>  {
  factory $UsageDataResponseCopyWith(UsageDataResponse value, $Res Function(UsageDataResponse) _then) = _$UsageDataResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<UsageData> data
});




}
/// @nodoc
class _$UsageDataResponseCopyWithImpl<$Res>
    implements $UsageDataResponseCopyWith<$Res> {
  _$UsageDataResponseCopyWithImpl(this._self, this._then);

  final UsageDataResponse _self;
  final $Res Function(UsageDataResponse) _then;

/// Create a copy of UsageDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<UsageData>,
  ));
}

}


/// Adds pattern-matching-related methods to [UsageDataResponse].
extension UsageDataResponsePatterns on UsageDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsageDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsageDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsageDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _UsageDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsageDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UsageDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<UsageData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsageDataResponse() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<UsageData> data)  $default,) {final _that = this;
switch (_that) {
case _UsageDataResponse():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<UsageData> data)?  $default,) {final _that = this;
switch (_that) {
case _UsageDataResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsageDataResponse implements UsageDataResponse {
  const _UsageDataResponse({required this.success, required final  List<UsageData> data}): _data = data;
  factory _UsageDataResponse.fromJson(Map<String, dynamic> json) => _$UsageDataResponseFromJson(json);

@override final  bool success;
 final  List<UsageData> _data;
@override List<UsageData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of UsageDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageDataResponseCopyWith<_UsageDataResponse> get copyWith => __$UsageDataResponseCopyWithImpl<_UsageDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageDataResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageDataResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'UsageDataResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$UsageDataResponseCopyWith<$Res> implements $UsageDataResponseCopyWith<$Res> {
  factory _$UsageDataResponseCopyWith(_UsageDataResponse value, $Res Function(_UsageDataResponse) _then) = __$UsageDataResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<UsageData> data
});




}
/// @nodoc
class __$UsageDataResponseCopyWithImpl<$Res>
    implements _$UsageDataResponseCopyWith<$Res> {
  __$UsageDataResponseCopyWithImpl(this._self, this._then);

  final _UsageDataResponse _self;
  final $Res Function(_UsageDataResponse) _then;

/// Create a copy of UsageDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_UsageDataResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<UsageData>,
  ));
}


}

// dart format on
