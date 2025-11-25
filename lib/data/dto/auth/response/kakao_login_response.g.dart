// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kakao_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KakaoLoginResponse _$KakaoLoginResponseFromJson(Map<String, dynamic> json) =>
    _KakaoLoginResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$KakaoLoginResponseToJson(_KakaoLoginResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
