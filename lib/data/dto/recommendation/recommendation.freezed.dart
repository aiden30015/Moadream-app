// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Recommendation {

 int get recId; int get userId; String get utilityType; String get recType; String get recommendationText; int get expectedSavings; String get implementationDifficulty; bool get isApplied; String get createdAt;
/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendationCopyWith<Recommendation> get copyWith => _$RecommendationCopyWithImpl<Recommendation>(this as Recommendation, _$identity);

  /// Serializes this Recommendation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recommendation&&(identical(other.recId, recId) || other.recId == recId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.utilityType, utilityType) || other.utilityType == utilityType)&&(identical(other.recType, recType) || other.recType == recType)&&(identical(other.recommendationText, recommendationText) || other.recommendationText == recommendationText)&&(identical(other.expectedSavings, expectedSavings) || other.expectedSavings == expectedSavings)&&(identical(other.implementationDifficulty, implementationDifficulty) || other.implementationDifficulty == implementationDifficulty)&&(identical(other.isApplied, isApplied) || other.isApplied == isApplied)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recId,userId,utilityType,recType,recommendationText,expectedSavings,implementationDifficulty,isApplied,createdAt);

@override
String toString() {
  return 'Recommendation(recId: $recId, userId: $userId, utilityType: $utilityType, recType: $recType, recommendationText: $recommendationText, expectedSavings: $expectedSavings, implementationDifficulty: $implementationDifficulty, isApplied: $isApplied, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecommendationCopyWith<$Res>  {
  factory $RecommendationCopyWith(Recommendation value, $Res Function(Recommendation) _then) = _$RecommendationCopyWithImpl;
@useResult
$Res call({
 int recId, int userId, String utilityType, String recType, String recommendationText, int expectedSavings, String implementationDifficulty, bool isApplied, String createdAt
});




}
/// @nodoc
class _$RecommendationCopyWithImpl<$Res>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._self, this._then);

  final Recommendation _self;
  final $Res Function(Recommendation) _then;

/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recId = null,Object? userId = null,Object? utilityType = null,Object? recType = null,Object? recommendationText = null,Object? expectedSavings = null,Object? implementationDifficulty = null,Object? isApplied = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
recId: null == recId ? _self.recId : recId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,utilityType: null == utilityType ? _self.utilityType : utilityType // ignore: cast_nullable_to_non_nullable
as String,recType: null == recType ? _self.recType : recType // ignore: cast_nullable_to_non_nullable
as String,recommendationText: null == recommendationText ? _self.recommendationText : recommendationText // ignore: cast_nullable_to_non_nullable
as String,expectedSavings: null == expectedSavings ? _self.expectedSavings : expectedSavings // ignore: cast_nullable_to_non_nullable
as int,implementationDifficulty: null == implementationDifficulty ? _self.implementationDifficulty : implementationDifficulty // ignore: cast_nullable_to_non_nullable
as String,isApplied: null == isApplied ? _self.isApplied : isApplied // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Recommendation].
extension RecommendationPatterns on Recommendation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recommendation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recommendation value)  $default,){
final _that = this;
switch (_that) {
case _Recommendation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recommendation value)?  $default,){
final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int recId,  int userId,  String utilityType,  String recType,  String recommendationText,  int expectedSavings,  String implementationDifficulty,  bool isApplied,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
return $default(_that.recId,_that.userId,_that.utilityType,_that.recType,_that.recommendationText,_that.expectedSavings,_that.implementationDifficulty,_that.isApplied,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int recId,  int userId,  String utilityType,  String recType,  String recommendationText,  int expectedSavings,  String implementationDifficulty,  bool isApplied,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _Recommendation():
return $default(_that.recId,_that.userId,_that.utilityType,_that.recType,_that.recommendationText,_that.expectedSavings,_that.implementationDifficulty,_that.isApplied,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int recId,  int userId,  String utilityType,  String recType,  String recommendationText,  int expectedSavings,  String implementationDifficulty,  bool isApplied,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
return $default(_that.recId,_that.userId,_that.utilityType,_that.recType,_that.recommendationText,_that.expectedSavings,_that.implementationDifficulty,_that.isApplied,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Recommendation implements Recommendation {
  const _Recommendation({required this.recId, required this.userId, required this.utilityType, required this.recType, required this.recommendationText, required this.expectedSavings, required this.implementationDifficulty, required this.isApplied, required this.createdAt});
  factory _Recommendation.fromJson(Map<String, dynamic> json) => _$RecommendationFromJson(json);

@override final  int recId;
@override final  int userId;
@override final  String utilityType;
@override final  String recType;
@override final  String recommendationText;
@override final  int expectedSavings;
@override final  String implementationDifficulty;
@override final  bool isApplied;
@override final  String createdAt;

/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendationCopyWith<_Recommendation> get copyWith => __$RecommendationCopyWithImpl<_Recommendation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommendationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recommendation&&(identical(other.recId, recId) || other.recId == recId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.utilityType, utilityType) || other.utilityType == utilityType)&&(identical(other.recType, recType) || other.recType == recType)&&(identical(other.recommendationText, recommendationText) || other.recommendationText == recommendationText)&&(identical(other.expectedSavings, expectedSavings) || other.expectedSavings == expectedSavings)&&(identical(other.implementationDifficulty, implementationDifficulty) || other.implementationDifficulty == implementationDifficulty)&&(identical(other.isApplied, isApplied) || other.isApplied == isApplied)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recId,userId,utilityType,recType,recommendationText,expectedSavings,implementationDifficulty,isApplied,createdAt);

@override
String toString() {
  return 'Recommendation(recId: $recId, userId: $userId, utilityType: $utilityType, recType: $recType, recommendationText: $recommendationText, expectedSavings: $expectedSavings, implementationDifficulty: $implementationDifficulty, isApplied: $isApplied, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecommendationCopyWith<$Res> implements $RecommendationCopyWith<$Res> {
  factory _$RecommendationCopyWith(_Recommendation value, $Res Function(_Recommendation) _then) = __$RecommendationCopyWithImpl;
@override @useResult
$Res call({
 int recId, int userId, String utilityType, String recType, String recommendationText, int expectedSavings, String implementationDifficulty, bool isApplied, String createdAt
});




}
/// @nodoc
class __$RecommendationCopyWithImpl<$Res>
    implements _$RecommendationCopyWith<$Res> {
  __$RecommendationCopyWithImpl(this._self, this._then);

  final _Recommendation _self;
  final $Res Function(_Recommendation) _then;

/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recId = null,Object? userId = null,Object? utilityType = null,Object? recType = null,Object? recommendationText = null,Object? expectedSavings = null,Object? implementationDifficulty = null,Object? isApplied = null,Object? createdAt = null,}) {
  return _then(_Recommendation(
recId: null == recId ? _self.recId : recId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,utilityType: null == utilityType ? _self.utilityType : utilityType // ignore: cast_nullable_to_non_nullable
as String,recType: null == recType ? _self.recType : recType // ignore: cast_nullable_to_non_nullable
as String,recommendationText: null == recommendationText ? _self.recommendationText : recommendationText // ignore: cast_nullable_to_non_nullable
as String,expectedSavings: null == expectedSavings ? _self.expectedSavings : expectedSavings // ignore: cast_nullable_to_non_nullable
as int,implementationDifficulty: null == implementationDifficulty ? _self.implementationDifficulty : implementationDifficulty // ignore: cast_nullable_to_non_nullable
as String,isApplied: null == isApplied ? _self.isApplied : isApplied // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RecommendationResponse {

 bool get success; List<Recommendation> get data; String? get message;
/// Create a copy of RecommendationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendationResponseCopyWith<RecommendationResponse> get copyWith => _$RecommendationResponseCopyWithImpl<RecommendationResponse>(this as RecommendationResponse, _$identity);

  /// Serializes this RecommendationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendationResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),message);

@override
String toString() {
  return 'RecommendationResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $RecommendationResponseCopyWith<$Res>  {
  factory $RecommendationResponseCopyWith(RecommendationResponse value, $Res Function(RecommendationResponse) _then) = _$RecommendationResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<Recommendation> data, String? message
});




}
/// @nodoc
class _$RecommendationResponseCopyWithImpl<$Res>
    implements $RecommendationResponseCopyWith<$Res> {
  _$RecommendationResponseCopyWithImpl(this._self, this._then);

  final RecommendationResponse _self;
  final $Res Function(RecommendationResponse) _then;

/// Create a copy of RecommendationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Recommendation>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecommendationResponse].
extension RecommendationResponsePatterns on RecommendationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecommendationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecommendationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecommendationResponse value)  $default,){
final _that = this;
switch (_that) {
case _RecommendationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecommendationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RecommendationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<Recommendation> data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecommendationResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<Recommendation> data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _RecommendationResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<Recommendation> data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _RecommendationResponse() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecommendationResponse implements RecommendationResponse {
  const _RecommendationResponse({required this.success, required final  List<Recommendation> data, this.message}): _data = data;
  factory _RecommendationResponse.fromJson(Map<String, dynamic> json) => _$RecommendationResponseFromJson(json);

@override final  bool success;
 final  List<Recommendation> _data;
@override List<Recommendation> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? message;

/// Create a copy of RecommendationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendationResponseCopyWith<_RecommendationResponse> get copyWith => __$RecommendationResponseCopyWithImpl<_RecommendationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommendationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommendationResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data),message);

@override
String toString() {
  return 'RecommendationResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$RecommendationResponseCopyWith<$Res> implements $RecommendationResponseCopyWith<$Res> {
  factory _$RecommendationResponseCopyWith(_RecommendationResponse value, $Res Function(_RecommendationResponse) _then) = __$RecommendationResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<Recommendation> data, String? message
});




}
/// @nodoc
class __$RecommendationResponseCopyWithImpl<$Res>
    implements _$RecommendationResponseCopyWith<$Res> {
  __$RecommendationResponseCopyWithImpl(this._self, this._then);

  final _RecommendationResponse _self;
  final $Res Function(_RecommendationResponse) _then;

/// Create a copy of RecommendationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_RecommendationResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Recommendation>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
