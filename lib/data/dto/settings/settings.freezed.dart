// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Settings {

 int get settingId; int get userId; int get monthlyBudget; int get alertThreshold; bool get pushEnabled; bool get emailEnabled; double get efficiencyScore;
/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsCopyWith<Settings> get copyWith => _$SettingsCopyWithImpl<Settings>(this as Settings, _$identity);

  /// Serializes this Settings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Settings&&(identical(other.settingId, settingId) || other.settingId == settingId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.monthlyBudget, monthlyBudget) || other.monthlyBudget == monthlyBudget)&&(identical(other.alertThreshold, alertThreshold) || other.alertThreshold == alertThreshold)&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.emailEnabled, emailEnabled) || other.emailEnabled == emailEnabled)&&(identical(other.efficiencyScore, efficiencyScore) || other.efficiencyScore == efficiencyScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,settingId,userId,monthlyBudget,alertThreshold,pushEnabled,emailEnabled,efficiencyScore);

@override
String toString() {
  return 'Settings(settingId: $settingId, userId: $userId, monthlyBudget: $monthlyBudget, alertThreshold: $alertThreshold, pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, efficiencyScore: $efficiencyScore)';
}


}

/// @nodoc
abstract mixin class $SettingsCopyWith<$Res>  {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) _then) = _$SettingsCopyWithImpl;
@useResult
$Res call({
 int settingId, int userId, int monthlyBudget, int alertThreshold, bool pushEnabled, bool emailEnabled, double efficiencyScore
});




}
/// @nodoc
class _$SettingsCopyWithImpl<$Res>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._self, this._then);

  final Settings _self;
  final $Res Function(Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settingId = null,Object? userId = null,Object? monthlyBudget = null,Object? alertThreshold = null,Object? pushEnabled = null,Object? emailEnabled = null,Object? efficiencyScore = null,}) {
  return _then(_self.copyWith(
settingId: null == settingId ? _self.settingId : settingId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,monthlyBudget: null == monthlyBudget ? _self.monthlyBudget : monthlyBudget // ignore: cast_nullable_to_non_nullable
as int,alertThreshold: null == alertThreshold ? _self.alertThreshold : alertThreshold // ignore: cast_nullable_to_non_nullable
as int,pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,emailEnabled: null == emailEnabled ? _self.emailEnabled : emailEnabled // ignore: cast_nullable_to_non_nullable
as bool,efficiencyScore: null == efficiencyScore ? _self.efficiencyScore : efficiencyScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Settings].
extension SettingsPatterns on Settings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Settings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Settings value)  $default,){
final _that = this;
switch (_that) {
case _Settings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Settings value)?  $default,){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int settingId,  int userId,  int monthlyBudget,  int alertThreshold,  bool pushEnabled,  bool emailEnabled,  double efficiencyScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.settingId,_that.userId,_that.monthlyBudget,_that.alertThreshold,_that.pushEnabled,_that.emailEnabled,_that.efficiencyScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int settingId,  int userId,  int monthlyBudget,  int alertThreshold,  bool pushEnabled,  bool emailEnabled,  double efficiencyScore)  $default,) {final _that = this;
switch (_that) {
case _Settings():
return $default(_that.settingId,_that.userId,_that.monthlyBudget,_that.alertThreshold,_that.pushEnabled,_that.emailEnabled,_that.efficiencyScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int settingId,  int userId,  int monthlyBudget,  int alertThreshold,  bool pushEnabled,  bool emailEnabled,  double efficiencyScore)?  $default,) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.settingId,_that.userId,_that.monthlyBudget,_that.alertThreshold,_that.pushEnabled,_that.emailEnabled,_that.efficiencyScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Settings implements Settings {
  const _Settings({required this.settingId, required this.userId, required this.monthlyBudget, required this.alertThreshold, required this.pushEnabled, required this.emailEnabled, required this.efficiencyScore});
  factory _Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);

@override final  int settingId;
@override final  int userId;
@override final  int monthlyBudget;
@override final  int alertThreshold;
@override final  bool pushEnabled;
@override final  bool emailEnabled;
@override final  double efficiencyScore;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsCopyWith<_Settings> get copyWith => __$SettingsCopyWithImpl<_Settings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Settings&&(identical(other.settingId, settingId) || other.settingId == settingId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.monthlyBudget, monthlyBudget) || other.monthlyBudget == monthlyBudget)&&(identical(other.alertThreshold, alertThreshold) || other.alertThreshold == alertThreshold)&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.emailEnabled, emailEnabled) || other.emailEnabled == emailEnabled)&&(identical(other.efficiencyScore, efficiencyScore) || other.efficiencyScore == efficiencyScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,settingId,userId,monthlyBudget,alertThreshold,pushEnabled,emailEnabled,efficiencyScore);

@override
String toString() {
  return 'Settings(settingId: $settingId, userId: $userId, monthlyBudget: $monthlyBudget, alertThreshold: $alertThreshold, pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, efficiencyScore: $efficiencyScore)';
}


}

/// @nodoc
abstract mixin class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) _then) = __$SettingsCopyWithImpl;
@override @useResult
$Res call({
 int settingId, int userId, int monthlyBudget, int alertThreshold, bool pushEnabled, bool emailEnabled, double efficiencyScore
});




}
/// @nodoc
class __$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(this._self, this._then);

  final _Settings _self;
  final $Res Function(_Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settingId = null,Object? userId = null,Object? monthlyBudget = null,Object? alertThreshold = null,Object? pushEnabled = null,Object? emailEnabled = null,Object? efficiencyScore = null,}) {
  return _then(_Settings(
settingId: null == settingId ? _self.settingId : settingId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,monthlyBudget: null == monthlyBudget ? _self.monthlyBudget : monthlyBudget // ignore: cast_nullable_to_non_nullable
as int,alertThreshold: null == alertThreshold ? _self.alertThreshold : alertThreshold // ignore: cast_nullable_to_non_nullable
as int,pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,emailEnabled: null == emailEnabled ? _self.emailEnabled : emailEnabled // ignore: cast_nullable_to_non_nullable
as bool,efficiencyScore: null == efficiencyScore ? _self.efficiencyScore : efficiencyScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$SettingsResponse {

 bool get success; Settings get data; String? get message;
/// Create a copy of SettingsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsResponseCopyWith<SettingsResponse> get copyWith => _$SettingsResponseCopyWithImpl<SettingsResponse>(this as SettingsResponse, _$identity);

  /// Serializes this SettingsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'SettingsResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $SettingsResponseCopyWith<$Res>  {
  factory $SettingsResponseCopyWith(SettingsResponse value, $Res Function(SettingsResponse) _then) = _$SettingsResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Settings data, String? message
});


$SettingsCopyWith<$Res> get data;

}
/// @nodoc
class _$SettingsResponseCopyWithImpl<$Res>
    implements $SettingsResponseCopyWith<$Res> {
  _$SettingsResponseCopyWithImpl(this._self, this._then);

  final SettingsResponse _self;
  final $Res Function(SettingsResponse) _then;

/// Create a copy of SettingsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Settings,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SettingsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsCopyWith<$Res> get data {
  
  return $SettingsCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsResponse].
extension SettingsResponsePatterns on SettingsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsResponse value)  $default,){
final _that = this;
switch (_that) {
case _SettingsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Settings data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Settings data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _SettingsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Settings data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _SettingsResponse() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsResponse implements SettingsResponse {
  const _SettingsResponse({required this.success, required this.data, this.message});
  factory _SettingsResponse.fromJson(Map<String, dynamic> json) => _$SettingsResponseFromJson(json);

@override final  bool success;
@override final  Settings data;
@override final  String? message;

/// Create a copy of SettingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsResponseCopyWith<_SettingsResponse> get copyWith => __$SettingsResponseCopyWithImpl<_SettingsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'SettingsResponse(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SettingsResponseCopyWith<$Res> implements $SettingsResponseCopyWith<$Res> {
  factory _$SettingsResponseCopyWith(_SettingsResponse value, $Res Function(_SettingsResponse) _then) = __$SettingsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Settings data, String? message
});


@override $SettingsCopyWith<$Res> get data;

}
/// @nodoc
class __$SettingsResponseCopyWithImpl<$Res>
    implements _$SettingsResponseCopyWith<$Res> {
  __$SettingsResponseCopyWithImpl(this._self, this._then);

  final _SettingsResponse _self;
  final $Res Function(_SettingsResponse) _then;

/// Create a copy of SettingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_SettingsResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Settings,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SettingsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsCopyWith<$Res> get data {
  
  return $SettingsCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
