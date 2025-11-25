// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    _SignupResponse(
      userId: (json['userId'] as num).toInt(),
      email: json['email'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      userVerificationCode: json['userVerificationCode'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$SignupResponseToJson(_SignupResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'dateOfBirth': instance.dateOfBirth,
      'userVerificationCode': instance.userVerificationCode,
      'createdAt': instance.createdAt,
    };
