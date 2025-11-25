// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_comparison.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillComparison {

 String get currentMonth; double get electricityChangeRate; double get waterChangeRate; double get gasChangeRate; int get electricityCurrentCharge; int get waterCurrentCharge; int get gasCurrentCharge; int get electricityPreviousCharge; int get waterPreviousCharge; int get gasPreviousCharge; int get totalCurrentCharge; int get totalPreviousCharge; double get totalChangeRate;
/// Create a copy of BillComparison
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillComparisonCopyWith<BillComparison> get copyWith => _$BillComparisonCopyWithImpl<BillComparison>(this as BillComparison, _$identity);

  /// Serializes this BillComparison to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillComparison&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth)&&(identical(other.electricityChangeRate, electricityChangeRate) || other.electricityChangeRate == electricityChangeRate)&&(identical(other.waterChangeRate, waterChangeRate) || other.waterChangeRate == waterChangeRate)&&(identical(other.gasChangeRate, gasChangeRate) || other.gasChangeRate == gasChangeRate)&&(identical(other.electricityCurrentCharge, electricityCurrentCharge) || other.electricityCurrentCharge == electricityCurrentCharge)&&(identical(other.waterCurrentCharge, waterCurrentCharge) || other.waterCurrentCharge == waterCurrentCharge)&&(identical(other.gasCurrentCharge, gasCurrentCharge) || other.gasCurrentCharge == gasCurrentCharge)&&(identical(other.electricityPreviousCharge, electricityPreviousCharge) || other.electricityPreviousCharge == electricityPreviousCharge)&&(identical(other.waterPreviousCharge, waterPreviousCharge) || other.waterPreviousCharge == waterPreviousCharge)&&(identical(other.gasPreviousCharge, gasPreviousCharge) || other.gasPreviousCharge == gasPreviousCharge)&&(identical(other.totalCurrentCharge, totalCurrentCharge) || other.totalCurrentCharge == totalCurrentCharge)&&(identical(other.totalPreviousCharge, totalPreviousCharge) || other.totalPreviousCharge == totalPreviousCharge)&&(identical(other.totalChangeRate, totalChangeRate) || other.totalChangeRate == totalChangeRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentMonth,electricityChangeRate,waterChangeRate,gasChangeRate,electricityCurrentCharge,waterCurrentCharge,gasCurrentCharge,electricityPreviousCharge,waterPreviousCharge,gasPreviousCharge,totalCurrentCharge,totalPreviousCharge,totalChangeRate);

@override
String toString() {
  return 'BillComparison(currentMonth: $currentMonth, electricityChangeRate: $electricityChangeRate, waterChangeRate: $waterChangeRate, gasChangeRate: $gasChangeRate, electricityCurrentCharge: $electricityCurrentCharge, waterCurrentCharge: $waterCurrentCharge, gasCurrentCharge: $gasCurrentCharge, electricityPreviousCharge: $electricityPreviousCharge, waterPreviousCharge: $waterPreviousCharge, gasPreviousCharge: $gasPreviousCharge, totalCurrentCharge: $totalCurrentCharge, totalPreviousCharge: $totalPreviousCharge, totalChangeRate: $totalChangeRate)';
}


}

/// @nodoc
abstract mixin class $BillComparisonCopyWith<$Res>  {
  factory $BillComparisonCopyWith(BillComparison value, $Res Function(BillComparison) _then) = _$BillComparisonCopyWithImpl;
@useResult
$Res call({
 String currentMonth, double electricityChangeRate, double waterChangeRate, double gasChangeRate, int electricityCurrentCharge, int waterCurrentCharge, int gasCurrentCharge, int electricityPreviousCharge, int waterPreviousCharge, int gasPreviousCharge, int totalCurrentCharge, int totalPreviousCharge, double totalChangeRate
});




}
/// @nodoc
class _$BillComparisonCopyWithImpl<$Res>
    implements $BillComparisonCopyWith<$Res> {
  _$BillComparisonCopyWithImpl(this._self, this._then);

  final BillComparison _self;
  final $Res Function(BillComparison) _then;

/// Create a copy of BillComparison
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentMonth = null,Object? electricityChangeRate = null,Object? waterChangeRate = null,Object? gasChangeRate = null,Object? electricityCurrentCharge = null,Object? waterCurrentCharge = null,Object? gasCurrentCharge = null,Object? electricityPreviousCharge = null,Object? waterPreviousCharge = null,Object? gasPreviousCharge = null,Object? totalCurrentCharge = null,Object? totalPreviousCharge = null,Object? totalChangeRate = null,}) {
  return _then(_self.copyWith(
currentMonth: null == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as String,electricityChangeRate: null == electricityChangeRate ? _self.electricityChangeRate : electricityChangeRate // ignore: cast_nullable_to_non_nullable
as double,waterChangeRate: null == waterChangeRate ? _self.waterChangeRate : waterChangeRate // ignore: cast_nullable_to_non_nullable
as double,gasChangeRate: null == gasChangeRate ? _self.gasChangeRate : gasChangeRate // ignore: cast_nullable_to_non_nullable
as double,electricityCurrentCharge: null == electricityCurrentCharge ? _self.electricityCurrentCharge : electricityCurrentCharge // ignore: cast_nullable_to_non_nullable
as int,waterCurrentCharge: null == waterCurrentCharge ? _self.waterCurrentCharge : waterCurrentCharge // ignore: cast_nullable_to_non_nullable
as int,gasCurrentCharge: null == gasCurrentCharge ? _self.gasCurrentCharge : gasCurrentCharge // ignore: cast_nullable_to_non_nullable
as int,electricityPreviousCharge: null == electricityPreviousCharge ? _self.electricityPreviousCharge : electricityPreviousCharge // ignore: cast_nullable_to_non_nullable
as int,waterPreviousCharge: null == waterPreviousCharge ? _self.waterPreviousCharge : waterPreviousCharge // ignore: cast_nullable_to_non_nullable
as int,gasPreviousCharge: null == gasPreviousCharge ? _self.gasPreviousCharge : gasPreviousCharge // ignore: cast_nullable_to_non_nullable
as int,totalCurrentCharge: null == totalCurrentCharge ? _self.totalCurrentCharge : totalCurrentCharge // ignore: cast_nullable_to_non_nullable
as int,totalPreviousCharge: null == totalPreviousCharge ? _self.totalPreviousCharge : totalPreviousCharge // ignore: cast_nullable_to_non_nullable
as int,totalChangeRate: null == totalChangeRate ? _self.totalChangeRate : totalChangeRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [BillComparison].
extension BillComparisonPatterns on BillComparison {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillComparison value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillComparison() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillComparison value)  $default,){
final _that = this;
switch (_that) {
case _BillComparison():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillComparison value)?  $default,){
final _that = this;
switch (_that) {
case _BillComparison() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String currentMonth,  double electricityChangeRate,  double waterChangeRate,  double gasChangeRate,  int electricityCurrentCharge,  int waterCurrentCharge,  int gasCurrentCharge,  int electricityPreviousCharge,  int waterPreviousCharge,  int gasPreviousCharge,  int totalCurrentCharge,  int totalPreviousCharge,  double totalChangeRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillComparison() when $default != null:
return $default(_that.currentMonth,_that.electricityChangeRate,_that.waterChangeRate,_that.gasChangeRate,_that.electricityCurrentCharge,_that.waterCurrentCharge,_that.gasCurrentCharge,_that.electricityPreviousCharge,_that.waterPreviousCharge,_that.gasPreviousCharge,_that.totalCurrentCharge,_that.totalPreviousCharge,_that.totalChangeRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String currentMonth,  double electricityChangeRate,  double waterChangeRate,  double gasChangeRate,  int electricityCurrentCharge,  int waterCurrentCharge,  int gasCurrentCharge,  int electricityPreviousCharge,  int waterPreviousCharge,  int gasPreviousCharge,  int totalCurrentCharge,  int totalPreviousCharge,  double totalChangeRate)  $default,) {final _that = this;
switch (_that) {
case _BillComparison():
return $default(_that.currentMonth,_that.electricityChangeRate,_that.waterChangeRate,_that.gasChangeRate,_that.electricityCurrentCharge,_that.waterCurrentCharge,_that.gasCurrentCharge,_that.electricityPreviousCharge,_that.waterPreviousCharge,_that.gasPreviousCharge,_that.totalCurrentCharge,_that.totalPreviousCharge,_that.totalChangeRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String currentMonth,  double electricityChangeRate,  double waterChangeRate,  double gasChangeRate,  int electricityCurrentCharge,  int waterCurrentCharge,  int gasCurrentCharge,  int electricityPreviousCharge,  int waterPreviousCharge,  int gasPreviousCharge,  int totalCurrentCharge,  int totalPreviousCharge,  double totalChangeRate)?  $default,) {final _that = this;
switch (_that) {
case _BillComparison() when $default != null:
return $default(_that.currentMonth,_that.electricityChangeRate,_that.waterChangeRate,_that.gasChangeRate,_that.electricityCurrentCharge,_that.waterCurrentCharge,_that.gasCurrentCharge,_that.electricityPreviousCharge,_that.waterPreviousCharge,_that.gasPreviousCharge,_that.totalCurrentCharge,_that.totalPreviousCharge,_that.totalChangeRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillComparison implements BillComparison {
  const _BillComparison({required this.currentMonth, required this.electricityChangeRate, required this.waterChangeRate, required this.gasChangeRate, required this.electricityCurrentCharge, required this.waterCurrentCharge, required this.gasCurrentCharge, required this.electricityPreviousCharge, required this.waterPreviousCharge, required this.gasPreviousCharge, required this.totalCurrentCharge, required this.totalPreviousCharge, required this.totalChangeRate});
  factory _BillComparison.fromJson(Map<String, dynamic> json) => _$BillComparisonFromJson(json);

@override final  String currentMonth;
@override final  double electricityChangeRate;
@override final  double waterChangeRate;
@override final  double gasChangeRate;
@override final  int electricityCurrentCharge;
@override final  int waterCurrentCharge;
@override final  int gasCurrentCharge;
@override final  int electricityPreviousCharge;
@override final  int waterPreviousCharge;
@override final  int gasPreviousCharge;
@override final  int totalCurrentCharge;
@override final  int totalPreviousCharge;
@override final  double totalChangeRate;

/// Create a copy of BillComparison
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillComparisonCopyWith<_BillComparison> get copyWith => __$BillComparisonCopyWithImpl<_BillComparison>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillComparisonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillComparison&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth)&&(identical(other.electricityChangeRate, electricityChangeRate) || other.electricityChangeRate == electricityChangeRate)&&(identical(other.waterChangeRate, waterChangeRate) || other.waterChangeRate == waterChangeRate)&&(identical(other.gasChangeRate, gasChangeRate) || other.gasChangeRate == gasChangeRate)&&(identical(other.electricityCurrentCharge, electricityCurrentCharge) || other.electricityCurrentCharge == electricityCurrentCharge)&&(identical(other.waterCurrentCharge, waterCurrentCharge) || other.waterCurrentCharge == waterCurrentCharge)&&(identical(other.gasCurrentCharge, gasCurrentCharge) || other.gasCurrentCharge == gasCurrentCharge)&&(identical(other.electricityPreviousCharge, electricityPreviousCharge) || other.electricityPreviousCharge == electricityPreviousCharge)&&(identical(other.waterPreviousCharge, waterPreviousCharge) || other.waterPreviousCharge == waterPreviousCharge)&&(identical(other.gasPreviousCharge, gasPreviousCharge) || other.gasPreviousCharge == gasPreviousCharge)&&(identical(other.totalCurrentCharge, totalCurrentCharge) || other.totalCurrentCharge == totalCurrentCharge)&&(identical(other.totalPreviousCharge, totalPreviousCharge) || other.totalPreviousCharge == totalPreviousCharge)&&(identical(other.totalChangeRate, totalChangeRate) || other.totalChangeRate == totalChangeRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentMonth,electricityChangeRate,waterChangeRate,gasChangeRate,electricityCurrentCharge,waterCurrentCharge,gasCurrentCharge,electricityPreviousCharge,waterPreviousCharge,gasPreviousCharge,totalCurrentCharge,totalPreviousCharge,totalChangeRate);

@override
String toString() {
  return 'BillComparison(currentMonth: $currentMonth, electricityChangeRate: $electricityChangeRate, waterChangeRate: $waterChangeRate, gasChangeRate: $gasChangeRate, electricityCurrentCharge: $electricityCurrentCharge, waterCurrentCharge: $waterCurrentCharge, gasCurrentCharge: $gasCurrentCharge, electricityPreviousCharge: $electricityPreviousCharge, waterPreviousCharge: $waterPreviousCharge, gasPreviousCharge: $gasPreviousCharge, totalCurrentCharge: $totalCurrentCharge, totalPreviousCharge: $totalPreviousCharge, totalChangeRate: $totalChangeRate)';
}


}

/// @nodoc
abstract mixin class _$BillComparisonCopyWith<$Res> implements $BillComparisonCopyWith<$Res> {
  factory _$BillComparisonCopyWith(_BillComparison value, $Res Function(_BillComparison) _then) = __$BillComparisonCopyWithImpl;
@override @useResult
$Res call({
 String currentMonth, double electricityChangeRate, double waterChangeRate, double gasChangeRate, int electricityCurrentCharge, int waterCurrentCharge, int gasCurrentCharge, int electricityPreviousCharge, int waterPreviousCharge, int gasPreviousCharge, int totalCurrentCharge, int totalPreviousCharge, double totalChangeRate
});




}
/// @nodoc
class __$BillComparisonCopyWithImpl<$Res>
    implements _$BillComparisonCopyWith<$Res> {
  __$BillComparisonCopyWithImpl(this._self, this._then);

  final _BillComparison _self;
  final $Res Function(_BillComparison) _then;

/// Create a copy of BillComparison
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentMonth = null,Object? electricityChangeRate = null,Object? waterChangeRate = null,Object? gasChangeRate = null,Object? electricityCurrentCharge = null,Object? waterCurrentCharge = null,Object? gasCurrentCharge = null,Object? electricityPreviousCharge = null,Object? waterPreviousCharge = null,Object? gasPreviousCharge = null,Object? totalCurrentCharge = null,Object? totalPreviousCharge = null,Object? totalChangeRate = null,}) {
  return _then(_BillComparison(
currentMonth: null == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as String,electricityChangeRate: null == electricityChangeRate ? _self.electricityChangeRate : electricityChangeRate // ignore: cast_nullable_to_non_nullable
as double,waterChangeRate: null == waterChangeRate ? _self.waterChangeRate : waterChangeRate // ignore: cast_nullable_to_non_nullable
as double,gasChangeRate: null == gasChangeRate ? _self.gasChangeRate : gasChangeRate // ignore: cast_nullable_to_non_nullable
as double,electricityCurrentCharge: null == electricityCurrentCharge ? _self.electricityCurrentCharge : electricityCurrentCharge // ignore: cast_nullable_to_non_nullable
as int,waterCurrentCharge: null == waterCurrentCharge ? _self.waterCurrentCharge : waterCurrentCharge // ignore: cast_nullable_to_non_nullable
as int,gasCurrentCharge: null == gasCurrentCharge ? _self.gasCurrentCharge : gasCurrentCharge // ignore: cast_nullable_to_non_nullable
as int,electricityPreviousCharge: null == electricityPreviousCharge ? _self.electricityPreviousCharge : electricityPreviousCharge // ignore: cast_nullable_to_non_nullable
as int,waterPreviousCharge: null == waterPreviousCharge ? _self.waterPreviousCharge : waterPreviousCharge // ignore: cast_nullable_to_non_nullable
as int,gasPreviousCharge: null == gasPreviousCharge ? _self.gasPreviousCharge : gasPreviousCharge // ignore: cast_nullable_to_non_nullable
as int,totalCurrentCharge: null == totalCurrentCharge ? _self.totalCurrentCharge : totalCurrentCharge // ignore: cast_nullable_to_non_nullable
as int,totalPreviousCharge: null == totalPreviousCharge ? _self.totalPreviousCharge : totalPreviousCharge // ignore: cast_nullable_to_non_nullable
as int,totalChangeRate: null == totalChangeRate ? _self.totalChangeRate : totalChangeRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$BillComparisonResponse {

 bool get success; BillComparison get data; String? get message;
/// Create a copy of BillComparisonResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillComparisonResponseCopyWith<BillComparisonResponse> get copyWith => _$BillComparisonResponseCopyWithImpl<BillComparisonResponse>(this as BillComparisonResponse, _$identity);

  /// Serializes this BillComparisonResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillComparisonResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'BillComparisonResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $BillComparisonResponseCopyWith<$Res>  {
  factory $BillComparisonResponseCopyWith(BillComparisonResponse value, $Res Function(BillComparisonResponse) _then) = _$BillComparisonResponseCopyWithImpl;
@useResult
$Res call({
 bool success, BillComparison data, String? message
});


$BillComparisonCopyWith<$Res> get data;

}
/// @nodoc
class _$BillComparisonResponseCopyWithImpl<$Res>
    implements $BillComparisonResponseCopyWith<$Res> {
  _$BillComparisonResponseCopyWithImpl(this._self, this._then);

  final BillComparisonResponse _self;
  final $Res Function(BillComparisonResponse) _then;

/// Create a copy of BillComparisonResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BillComparison,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BillComparisonResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillComparisonCopyWith<$Res> get data {
  
  return $BillComparisonCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BillComparisonResponse].
extension BillComparisonResponsePatterns on BillComparisonResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillComparisonResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillComparisonResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillComparisonResponse value)  $default,){
final _that = this;
switch (_that) {
case _BillComparisonResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillComparisonResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BillComparisonResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  BillComparison data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillComparisonResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  BillComparison data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _BillComparisonResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  BillComparison data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _BillComparisonResponse() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillComparisonResponse implements BillComparisonResponse {
  const _BillComparisonResponse({required this.success, required this.data, this.message});
  factory _BillComparisonResponse.fromJson(Map<String, dynamic> json) => _$BillComparisonResponseFromJson(json);

@override final  bool success;
@override final  BillComparison data;
@override final  String? message;

/// Create a copy of BillComparisonResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillComparisonResponseCopyWith<_BillComparisonResponse> get copyWith => __$BillComparisonResponseCopyWithImpl<_BillComparisonResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillComparisonResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillComparisonResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'BillComparisonResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$BillComparisonResponseCopyWith<$Res> implements $BillComparisonResponseCopyWith<$Res> {
  factory _$BillComparisonResponseCopyWith(_BillComparisonResponse value, $Res Function(_BillComparisonResponse) _then) = __$BillComparisonResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, BillComparison data, String? message
});


@override $BillComparisonCopyWith<$Res> get data;

}
/// @nodoc
class __$BillComparisonResponseCopyWithImpl<$Res>
    implements _$BillComparisonResponseCopyWith<$Res> {
  __$BillComparisonResponseCopyWithImpl(this._self, this._then);

  final _BillComparisonResponse _self;
  final $Res Function(_BillComparisonResponse) _then;

/// Create a copy of BillComparisonResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_BillComparisonResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BillComparison,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BillComparisonResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillComparisonCopyWith<$Res> get data {
  
  return $BillComparisonCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
