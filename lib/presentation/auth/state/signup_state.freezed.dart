// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {

 String get name; String get phoneNumber; String get regidentNumber; String get password; String get verificationCode; String get telecom; String get verifyCode; String get address; String get email;
/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateCopyWith<SignUpState> get copyWith => _$SignUpStateCopyWithImpl<SignUpState>(this as SignUpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.regidentNumber, regidentNumber) || other.regidentNumber == regidentNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.verificationCode, verificationCode) || other.verificationCode == verificationCode)&&(identical(other.telecom, telecom) || other.telecom == telecom)&&(identical(other.verifyCode, verifyCode) || other.verifyCode == verifyCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,name,phoneNumber,regidentNumber,password,verificationCode,telecom,verifyCode,address,email);

@override
String toString() {
  return 'SignUpState(name: $name, phoneNumber: $phoneNumber, regidentNumber: $regidentNumber, password: $password, verificationCode: $verificationCode, telecom: $telecom, verifyCode: $verifyCode, address: $address, email: $email)';
}


}

/// @nodoc
abstract mixin class $SignUpStateCopyWith<$Res>  {
  factory $SignUpStateCopyWith(SignUpState value, $Res Function(SignUpState) _then) = _$SignUpStateCopyWithImpl;
@useResult
$Res call({
 String name, String phoneNumber, String regidentNumber, String password, String verificationCode, String telecom, String verifyCode, String address, String email
});




}
/// @nodoc
class _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._self, this._then);

  final SignUpState _self;
  final $Res Function(SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phoneNumber = null,Object? regidentNumber = null,Object? password = null,Object? verificationCode = null,Object? telecom = null,Object? verifyCode = null,Object? address = null,Object? email = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,regidentNumber: null == regidentNumber ? _self.regidentNumber : regidentNumber // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,verificationCode: null == verificationCode ? _self.verificationCode : verificationCode // ignore: cast_nullable_to_non_nullable
as String,telecom: null == telecom ? _self.telecom : telecom // ignore: cast_nullable_to_non_nullable
as String,verifyCode: null == verifyCode ? _self.verifyCode : verifyCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpState value)  $default,){
final _that = this;
switch (_that) {
case _SignUpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpState value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String phoneNumber,  String regidentNumber,  String password,  String verificationCode,  String telecom,  String verifyCode,  String address,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.name,_that.phoneNumber,_that.regidentNumber,_that.password,_that.verificationCode,_that.telecom,_that.verifyCode,_that.address,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String phoneNumber,  String regidentNumber,  String password,  String verificationCode,  String telecom,  String verifyCode,  String address,  String email)  $default,) {final _that = this;
switch (_that) {
case _SignUpState():
return $default(_that.name,_that.phoneNumber,_that.regidentNumber,_that.password,_that.verificationCode,_that.telecom,_that.verifyCode,_that.address,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String phoneNumber,  String regidentNumber,  String password,  String verificationCode,  String telecom,  String verifyCode,  String address,  String email)?  $default,) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.name,_that.phoneNumber,_that.regidentNumber,_that.password,_that.verificationCode,_that.telecom,_that.verifyCode,_that.address,_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpState implements SignUpState {
  const _SignUpState({this.name = '', this.phoneNumber = '', this.regidentNumber = '', this.password = '', this.verificationCode = '', this.telecom = '', this.verifyCode = '', this.address = '', this.email = ''});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  String regidentNumber;
@override@JsonKey() final  String password;
@override@JsonKey() final  String verificationCode;
@override@JsonKey() final  String telecom;
@override@JsonKey() final  String verifyCode;
@override@JsonKey() final  String address;
@override@JsonKey() final  String email;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpStateCopyWith<_SignUpState> get copyWith => __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpState&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.regidentNumber, regidentNumber) || other.regidentNumber == regidentNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.verificationCode, verificationCode) || other.verificationCode == verificationCode)&&(identical(other.telecom, telecom) || other.telecom == telecom)&&(identical(other.verifyCode, verifyCode) || other.verifyCode == verifyCode)&&(identical(other.address, address) || other.address == address)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,name,phoneNumber,regidentNumber,password,verificationCode,telecom,verifyCode,address,email);

@override
String toString() {
  return 'SignUpState(name: $name, phoneNumber: $phoneNumber, regidentNumber: $regidentNumber, password: $password, verificationCode: $verificationCode, telecom: $telecom, verifyCode: $verifyCode, address: $address, email: $email)';
}


}

/// @nodoc
abstract mixin class _$SignUpStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(_SignUpState value, $Res Function(_SignUpState) _then) = __$SignUpStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String phoneNumber, String regidentNumber, String password, String verificationCode, String telecom, String verifyCode, String address, String email
});




}
/// @nodoc
class __$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(this._self, this._then);

  final _SignUpState _self;
  final $Res Function(_SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phoneNumber = null,Object? regidentNumber = null,Object? password = null,Object? verificationCode = null,Object? telecom = null,Object? verifyCode = null,Object? address = null,Object? email = null,}) {
  return _then(_SignUpState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,regidentNumber: null == regidentNumber ? _self.regidentNumber : regidentNumber // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,verificationCode: null == verificationCode ? _self.verificationCode : verificationCode // ignore: cast_nullable_to_non_nullable
as String,telecom: null == telecom ? _self.telecom : telecom // ignore: cast_nullable_to_non_nullable
as String,verifyCode: null == verifyCode ? _self.verifyCode : verifyCode // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
