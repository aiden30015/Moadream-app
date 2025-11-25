// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupRequest _$SignupRequestFromJson(Map<String, dynamic> json) =>
    _SignupRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
    );

Map<String, dynamic> _$SignupRequestToJson(_SignupRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'dateOfBirth': instance.dateOfBirth,
    };
