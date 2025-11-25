// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bill {

 int get billId; int get userId; String get utilityType; String get billingMonth; double? get totalUsage; int? get totalCharge; double? get previousMonthUsage; int? get previousMonthCharge; String? get dueDate; bool get isPaid;
/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillCopyWith<Bill> get copyWith => _$BillCopyWithImpl<Bill>(this as Bill, _$identity);

  /// Serializes this Bill to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bill&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.utilityType, utilityType) || other.utilityType == utilityType)&&(identical(other.billingMonth, billingMonth) || other.billingMonth == billingMonth)&&(identical(other.totalUsage, totalUsage) || other.totalUsage == totalUsage)&&(identical(other.totalCharge, totalCharge) || other.totalCharge == totalCharge)&&(identical(other.previousMonthUsage, previousMonthUsage) || other.previousMonthUsage == previousMonthUsage)&&(identical(other.previousMonthCharge, previousMonthCharge) || other.previousMonthCharge == previousMonthCharge)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billId,userId,utilityType,billingMonth,totalUsage,totalCharge,previousMonthUsage,previousMonthCharge,dueDate,isPaid);

@override
String toString() {
  return 'Bill(billId: $billId, userId: $userId, utilityType: $utilityType, billingMonth: $billingMonth, totalUsage: $totalUsage, totalCharge: $totalCharge, previousMonthUsage: $previousMonthUsage, previousMonthCharge: $previousMonthCharge, dueDate: $dueDate, isPaid: $isPaid)';
}


}

/// @nodoc
abstract mixin class $BillCopyWith<$Res>  {
  factory $BillCopyWith(Bill value, $Res Function(Bill) _then) = _$BillCopyWithImpl;
@useResult
$Res call({
 int billId, int userId, String utilityType, String billingMonth, double? totalUsage, int? totalCharge, double? previousMonthUsage, int? previousMonthCharge, String? dueDate, bool isPaid
});




}
/// @nodoc
class _$BillCopyWithImpl<$Res>
    implements $BillCopyWith<$Res> {
  _$BillCopyWithImpl(this._self, this._then);

  final Bill _self;
  final $Res Function(Bill) _then;

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? billId = null,Object? userId = null,Object? utilityType = null,Object? billingMonth = null,Object? totalUsage = freezed,Object? totalCharge = freezed,Object? previousMonthUsage = freezed,Object? previousMonthCharge = freezed,Object? dueDate = freezed,Object? isPaid = null,}) {
  return _then(_self.copyWith(
billId: null == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,utilityType: null == utilityType ? _self.utilityType : utilityType // ignore: cast_nullable_to_non_nullable
as String,billingMonth: null == billingMonth ? _self.billingMonth : billingMonth // ignore: cast_nullable_to_non_nullable
as String,totalUsage: freezed == totalUsage ? _self.totalUsage : totalUsage // ignore: cast_nullable_to_non_nullable
as double?,totalCharge: freezed == totalCharge ? _self.totalCharge : totalCharge // ignore: cast_nullable_to_non_nullable
as int?,previousMonthUsage: freezed == previousMonthUsage ? _self.previousMonthUsage : previousMonthUsage // ignore: cast_nullable_to_non_nullable
as double?,previousMonthCharge: freezed == previousMonthCharge ? _self.previousMonthCharge : previousMonthCharge // ignore: cast_nullable_to_non_nullable
as int?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Bill].
extension BillPatterns on Bill {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bill value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bill() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bill value)  $default,){
final _that = this;
switch (_that) {
case _Bill():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bill value)?  $default,){
final _that = this;
switch (_that) {
case _Bill() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int billId,  int userId,  String utilityType,  String billingMonth,  double? totalUsage,  int? totalCharge,  double? previousMonthUsage,  int? previousMonthCharge,  String? dueDate,  bool isPaid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bill() when $default != null:
return $default(_that.billId,_that.userId,_that.utilityType,_that.billingMonth,_that.totalUsage,_that.totalCharge,_that.previousMonthUsage,_that.previousMonthCharge,_that.dueDate,_that.isPaid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int billId,  int userId,  String utilityType,  String billingMonth,  double? totalUsage,  int? totalCharge,  double? previousMonthUsage,  int? previousMonthCharge,  String? dueDate,  bool isPaid)  $default,) {final _that = this;
switch (_that) {
case _Bill():
return $default(_that.billId,_that.userId,_that.utilityType,_that.billingMonth,_that.totalUsage,_that.totalCharge,_that.previousMonthUsage,_that.previousMonthCharge,_that.dueDate,_that.isPaid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int billId,  int userId,  String utilityType,  String billingMonth,  double? totalUsage,  int? totalCharge,  double? previousMonthUsage,  int? previousMonthCharge,  String? dueDate,  bool isPaid)?  $default,) {final _that = this;
switch (_that) {
case _Bill() when $default != null:
return $default(_that.billId,_that.userId,_that.utilityType,_that.billingMonth,_that.totalUsage,_that.totalCharge,_that.previousMonthUsage,_that.previousMonthCharge,_that.dueDate,_that.isPaid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bill implements Bill {
  const _Bill({required this.billId, required this.userId, required this.utilityType, required this.billingMonth, this.totalUsage, this.totalCharge, this.previousMonthUsage, this.previousMonthCharge, this.dueDate, this.isPaid = false});
  factory _Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);

@override final  int billId;
@override final  int userId;
@override final  String utilityType;
@override final  String billingMonth;
@override final  double? totalUsage;
@override final  int? totalCharge;
@override final  double? previousMonthUsage;
@override final  int? previousMonthCharge;
@override final  String? dueDate;
@override@JsonKey() final  bool isPaid;

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillCopyWith<_Bill> get copyWith => __$BillCopyWithImpl<_Bill>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bill&&(identical(other.billId, billId) || other.billId == billId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.utilityType, utilityType) || other.utilityType == utilityType)&&(identical(other.billingMonth, billingMonth) || other.billingMonth == billingMonth)&&(identical(other.totalUsage, totalUsage) || other.totalUsage == totalUsage)&&(identical(other.totalCharge, totalCharge) || other.totalCharge == totalCharge)&&(identical(other.previousMonthUsage, previousMonthUsage) || other.previousMonthUsage == previousMonthUsage)&&(identical(other.previousMonthCharge, previousMonthCharge) || other.previousMonthCharge == previousMonthCharge)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billId,userId,utilityType,billingMonth,totalUsage,totalCharge,previousMonthUsage,previousMonthCharge,dueDate,isPaid);

@override
String toString() {
  return 'Bill(billId: $billId, userId: $userId, utilityType: $utilityType, billingMonth: $billingMonth, totalUsage: $totalUsage, totalCharge: $totalCharge, previousMonthUsage: $previousMonthUsage, previousMonthCharge: $previousMonthCharge, dueDate: $dueDate, isPaid: $isPaid)';
}


}

/// @nodoc
abstract mixin class _$BillCopyWith<$Res> implements $BillCopyWith<$Res> {
  factory _$BillCopyWith(_Bill value, $Res Function(_Bill) _then) = __$BillCopyWithImpl;
@override @useResult
$Res call({
 int billId, int userId, String utilityType, String billingMonth, double? totalUsage, int? totalCharge, double? previousMonthUsage, int? previousMonthCharge, String? dueDate, bool isPaid
});




}
/// @nodoc
class __$BillCopyWithImpl<$Res>
    implements _$BillCopyWith<$Res> {
  __$BillCopyWithImpl(this._self, this._then);

  final _Bill _self;
  final $Res Function(_Bill) _then;

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? billId = null,Object? userId = null,Object? utilityType = null,Object? billingMonth = null,Object? totalUsage = freezed,Object? totalCharge = freezed,Object? previousMonthUsage = freezed,Object? previousMonthCharge = freezed,Object? dueDate = freezed,Object? isPaid = null,}) {
  return _then(_Bill(
billId: null == billId ? _self.billId : billId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,utilityType: null == utilityType ? _self.utilityType : utilityType // ignore: cast_nullable_to_non_nullable
as String,billingMonth: null == billingMonth ? _self.billingMonth : billingMonth // ignore: cast_nullable_to_non_nullable
as String,totalUsage: freezed == totalUsage ? _self.totalUsage : totalUsage // ignore: cast_nullable_to_non_nullable
as double?,totalCharge: freezed == totalCharge ? _self.totalCharge : totalCharge // ignore: cast_nullable_to_non_nullable
as int?,previousMonthUsage: freezed == previousMonthUsage ? _self.previousMonthUsage : previousMonthUsage // ignore: cast_nullable_to_non_nullable
as double?,previousMonthCharge: freezed == previousMonthCharge ? _self.previousMonthCharge : previousMonthCharge // ignore: cast_nullable_to_non_nullable
as int?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BillResponse {

 bool get success; Bill get data; String? get message;
/// Create a copy of BillResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillResponseCopyWith<BillResponse> get copyWith => _$BillResponseCopyWithImpl<BillResponse>(this as BillResponse, _$identity);

  /// Serializes this BillResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'BillResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $BillResponseCopyWith<$Res>  {
  factory $BillResponseCopyWith(BillResponse value, $Res Function(BillResponse) _then) = _$BillResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Bill data, String? message
});


$BillCopyWith<$Res> get data;

}
/// @nodoc
class _$BillResponseCopyWithImpl<$Res>
    implements $BillResponseCopyWith<$Res> {
  _$BillResponseCopyWithImpl(this._self, this._then);

  final BillResponse _self;
  final $Res Function(BillResponse) _then;

/// Create a copy of BillResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Bill,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BillResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillCopyWith<$Res> get data {
  
  return $BillCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BillResponse].
extension BillResponsePatterns on BillResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillResponse value)  $default,){
final _that = this;
switch (_that) {
case _BillResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BillResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Bill data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Bill data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _BillResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Bill data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _BillResponse() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillResponse implements BillResponse {
  const _BillResponse({required this.success, required this.data, this.message});
  factory _BillResponse.fromJson(Map<String, dynamic> json) => _$BillResponseFromJson(json);

@override final  bool success;
@override final  Bill data;
@override final  String? message;

/// Create a copy of BillResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillResponseCopyWith<_BillResponse> get copyWith => __$BillResponseCopyWithImpl<_BillResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'BillResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$BillResponseCopyWith<$Res> implements $BillResponseCopyWith<$Res> {
  factory _$BillResponseCopyWith(_BillResponse value, $Res Function(_BillResponse) _then) = __$BillResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Bill data, String? message
});


@override $BillCopyWith<$Res> get data;

}
/// @nodoc
class __$BillResponseCopyWithImpl<$Res>
    implements _$BillResponseCopyWith<$Res> {
  __$BillResponseCopyWithImpl(this._self, this._then);

  final _BillResponse _self;
  final $Res Function(_BillResponse) _then;

/// Create a copy of BillResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_BillResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Bill,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BillResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillCopyWith<$Res> get data {
  
  return $BillCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
