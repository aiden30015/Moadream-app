// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Settings _$SettingsFromJson(Map<String, dynamic> json) => _Settings(
  settingId: (json['settingId'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  monthlyBudget: (json['monthlyBudget'] as num).toInt(),
  alertThreshold: (json['alertThreshold'] as num).toInt(),
  pushEnabled: json['pushEnabled'] as bool,
  emailEnabled: json['emailEnabled'] as bool,
  efficiencyScore: (json['efficiencyScore'] as num).toDouble(),
);

Map<String, dynamic> _$SettingsToJson(_Settings instance) => <String, dynamic>{
  'settingId': instance.settingId,
  'userId': instance.userId,
  'monthlyBudget': instance.monthlyBudget,
  'alertThreshold': instance.alertThreshold,
  'pushEnabled': instance.pushEnabled,
  'emailEnabled': instance.emailEnabled,
  'efficiencyScore': instance.efficiencyScore,
};

_SettingsResponse _$SettingsResponseFromJson(Map<String, dynamic> json) =>
    _SettingsResponse(
      success: json['success'] as bool,
      data: Settings.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SettingsResponseToJson(_SettingsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
