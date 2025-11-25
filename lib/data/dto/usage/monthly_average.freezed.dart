// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_average.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlyAverage {

 int get year; int get month; String get utilityType; double get averageUsage; double get totalUsage; double get averageCharge; double get totalCharge; int get dataCount; String get unit;
/// Create a copy of MonthlyAverage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyAverageCopyWith<MonthlyAverage> get copyWith => _$MonthlyAverageCopyWithImpl<MonthlyAverage>(this as MonthlyAverage, _$identity);

  /// Serializes this MonthlyAverage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyAverage&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.utilityType, utilityType) || other.utilityType == utilityType)&&(identical(other.averageUsage, averageUsage) || other.averageUsage == averageUsage)&&(identical(other.totalUsage, totalUsage) || other.totalUsage == totalUsage)&&(identical(other.averageCharge, averageCharge) || other.averageCharge == averageCharge)&&(identical(other.totalCharge, totalCharge) || other.totalCharge == totalCharge)&&(identical(other.dataCount, dataCount) || other.dataCount == dataCount)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,utilityType,averageUsage,totalUsage,averageCharge,totalCharge,dataCount,unit);

@override
String toString() {
  return 'MonthlyAverage(year: $year, month: $month, utilityType: $utilityType, averageUsage: $averageUsage, totalUsage: $totalUsage, averageCharge: $averageCharge, totalCharge: $totalCharge, dataCount: $dataCount, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $MonthlyAverageCopyWith<$Res>  {
  factory $MonthlyAverageCopyWith(MonthlyAverage value, $Res Function(MonthlyAverage) _then) = _$MonthlyAverageCopyWithImpl;
@useResult
$Res call({
 int year, int month, String utilityType, double averageUsage, double totalUsage, double averageCharge, double totalCharge, int dataCount, String unit
});




}
/// @nodoc
class _$MonthlyAverageCopyWithImpl<$Res>
    implements $MonthlyAverageCopyWith<$Res> {
  _$MonthlyAverageCopyWithImpl(this._self, this._then);

  final MonthlyAverage _self;
  final $Res Function(MonthlyAverage) _then;

/// Create a copy of MonthlyAverage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? month = null,Object? utilityType = null,Object? averageUsage = null,Object? totalUsage = null,Object? averageCharge = null,Object? totalCharge = null,Object? dataCount = null,Object? unit = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,utilityType: null == utilityType ? _self.utilityType : utilityType // ignore: cast_nullable_to_non_nullable
as String,averageUsage: null == averageUsage ? _self.averageUsage : averageUsage // ignore: cast_nullable_to_non_nullable
as double,totalUsage: null == totalUsage ? _self.totalUsage : totalUsage // ignore: cast_nullable_to_non_nullable
as double,averageCharge: null == averageCharge ? _self.averageCharge : averageCharge // ignore: cast_nullable_to_non_nullable
as double,totalCharge: null == totalCharge ? _self.totalCharge : totalCharge // ignore: cast_nullable_to_non_nullable
as double,dataCount: null == dataCount ? _self.dataCount : dataCount // ignore: cast_nullable_to_non_nullable
as int,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyAverage].
extension MonthlyAveragePatterns on MonthlyAverage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyAverage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyAverage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyAverage value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyAverage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyAverage value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyAverage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int year,  int month,  String utilityType,  double averageUsage,  double totalUsage,  double averageCharge,  double totalCharge,  int dataCount,  String unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyAverage() when $default != null:
return $default(_that.year,_that.month,_that.utilityType,_that.averageUsage,_that.totalUsage,_that.averageCharge,_that.totalCharge,_that.dataCount,_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int year,  int month,  String utilityType,  double averageUsage,  double totalUsage,  double averageCharge,  double totalCharge,  int dataCount,  String unit)  $default,) {final _that = this;
switch (_that) {
case _MonthlyAverage():
return $default(_that.year,_that.month,_that.utilityType,_that.averageUsage,_that.totalUsage,_that.averageCharge,_that.totalCharge,_that.dataCount,_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int year,  int month,  String utilityType,  double averageUsage,  double totalUsage,  double averageCharge,  double totalCharge,  int dataCount,  String unit)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyAverage() when $default != null:
return $default(_that.year,_that.month,_that.utilityType,_that.averageUsage,_that.totalUsage,_that.averageCharge,_that.totalCharge,_that.dataCount,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyAverage implements MonthlyAverage {
  const _MonthlyAverage({required this.year, required this.month, required this.utilityType, required this.averageUsage, required this.totalUsage, required this.averageCharge, required this.totalCharge, required this.dataCount, required this.unit});
  factory _MonthlyAverage.fromJson(Map<String, dynamic> json) => _$MonthlyAverageFromJson(json);

@override final  int year;
@override final  int month;
@override final  String utilityType;
@override final  double averageUsage;
@override final  double totalUsage;
@override final  double averageCharge;
@override final  double totalCharge;
@override final  int dataCount;
@override final  String unit;

/// Create a copy of MonthlyAverage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyAverageCopyWith<_MonthlyAverage> get copyWith => __$MonthlyAverageCopyWithImpl<_MonthlyAverage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyAverageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyAverage&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.utilityType, utilityType) || other.utilityType == utilityType)&&(identical(other.averageUsage, averageUsage) || other.averageUsage == averageUsage)&&(identical(other.totalUsage, totalUsage) || other.totalUsage == totalUsage)&&(identical(other.averageCharge, averageCharge) || other.averageCharge == averageCharge)&&(identical(other.totalCharge, totalCharge) || other.totalCharge == totalCharge)&&(identical(other.dataCount, dataCount) || other.dataCount == dataCount)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,utilityType,averageUsage,totalUsage,averageCharge,totalCharge,dataCount,unit);

@override
String toString() {
  return 'MonthlyAverage(year: $year, month: $month, utilityType: $utilityType, averageUsage: $averageUsage, totalUsage: $totalUsage, averageCharge: $averageCharge, totalCharge: $totalCharge, dataCount: $dataCount, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$MonthlyAverageCopyWith<$Res> implements $MonthlyAverageCopyWith<$Res> {
  factory _$MonthlyAverageCopyWith(_MonthlyAverage value, $Res Function(_MonthlyAverage) _then) = __$MonthlyAverageCopyWithImpl;
@override @useResult
$Res call({
 int year, int month, String utilityType, double averageUsage, double totalUsage, double averageCharge, double totalCharge, int dataCount, String unit
});




}
/// @nodoc
class __$MonthlyAverageCopyWithImpl<$Res>
    implements _$MonthlyAverageCopyWith<$Res> {
  __$MonthlyAverageCopyWithImpl(this._self, this._then);

  final _MonthlyAverage _self;
  final $Res Function(_MonthlyAverage) _then;

/// Create a copy of MonthlyAverage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? month = null,Object? utilityType = null,Object? averageUsage = null,Object? totalUsage = null,Object? averageCharge = null,Object? totalCharge = null,Object? dataCount = null,Object? unit = null,}) {
  return _then(_MonthlyAverage(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,utilityType: null == utilityType ? _self.utilityType : utilityType // ignore: cast_nullable_to_non_nullable
as String,averageUsage: null == averageUsage ? _self.averageUsage : averageUsage // ignore: cast_nullable_to_non_nullable
as double,totalUsage: null == totalUsage ? _self.totalUsage : totalUsage // ignore: cast_nullable_to_non_nullable
as double,averageCharge: null == averageCharge ? _self.averageCharge : averageCharge // ignore: cast_nullable_to_non_nullable
as double,totalCharge: null == totalCharge ? _self.totalCharge : totalCharge // ignore: cast_nullable_to_non_nullable
as double,dataCount: null == dataCount ? _self.dataCount : dataCount // ignore: cast_nullable_to_non_nullable
as int,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MonthlyAverageResponse {

 bool get success; List<MonthlyAverage> get data; String? get message;
/// Create a copy of MonthlyAverageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyAverageResponseCopyWith<MonthlyAverageResponse> get copyWith => _$MonthlyAverageResponseCopyWithImpl<MonthlyAverageResponse>(this as MonthlyAverageResponse, _$identity);

  /// Serializes this MonthlyAverageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyAverageResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),message);

@override
String toString() {
  return 'MonthlyAverageResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $MonthlyAverageResponseCopyWith<$Res>  {
  factory $MonthlyAverageResponseCopyWith(MonthlyAverageResponse value, $Res Function(MonthlyAverageResponse) _then) = _$MonthlyAverageResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<MonthlyAverage> data, String? message
});




}
/// @nodoc
class _$MonthlyAverageResponseCopyWithImpl<$Res>
    implements $MonthlyAverageResponseCopyWith<$Res> {
  _$MonthlyAverageResponseCopyWithImpl(this._self, this._then);

  final MonthlyAverageResponse _self;
  final $Res Function(MonthlyAverageResponse) _then;

/// Create a copy of MonthlyAverageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MonthlyAverage>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyAverageResponse].
extension MonthlyAverageResponsePatterns on MonthlyAverageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyAverageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyAverageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyAverageResponse value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyAverageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyAverageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyAverageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<MonthlyAverage> data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyAverageResponse() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<MonthlyAverage> data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _MonthlyAverageResponse():
return $default(_that.success,_that.data,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<MonthlyAverage> data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyAverageResponse() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyAverageResponse implements MonthlyAverageResponse {
  const _MonthlyAverageResponse({required this.success, required final  List<MonthlyAverage> data, this.message}): _data = data;
  factory _MonthlyAverageResponse.fromJson(Map<String, dynamic> json) => _$MonthlyAverageResponseFromJson(json);

@override final  bool success;
 final  List<MonthlyAverage> _data;
@override List<MonthlyAverage> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? message;

/// Create a copy of MonthlyAverageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyAverageResponseCopyWith<_MonthlyAverageResponse> get copyWith => __$MonthlyAverageResponseCopyWithImpl<_MonthlyAverageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyAverageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyAverageResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data),message);

@override
String toString() {
  return 'MonthlyAverageResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$MonthlyAverageResponseCopyWith<$Res> implements $MonthlyAverageResponseCopyWith<$Res> {
  factory _$MonthlyAverageResponseCopyWith(_MonthlyAverageResponse value, $Res Function(_MonthlyAverageResponse) _then) = __$MonthlyAverageResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<MonthlyAverage> data, String? message
});




}
/// @nodoc
class __$MonthlyAverageResponseCopyWithImpl<$Res>
    implements _$MonthlyAverageResponseCopyWith<$Res> {
  __$MonthlyAverageResponseCopyWithImpl(this._self, this._then);

  final _MonthlyAverageResponse _self;
  final $Res Function(_MonthlyAverageResponse) _then;

/// Create a copy of MonthlyAverageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_MonthlyAverageResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MonthlyAverage>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
