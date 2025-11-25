// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsageData _$UsageDataFromJson(Map<String, dynamic> json) => _UsageData(
  usageId: (json['usageId'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  utilityType: json['utilityType'] as String,
  usageAmount: (json['usageAmount'] as num).toDouble(),
  unit: json['unit'] as String,
  currentCharge: (json['currentCharge'] as num).toInt(),
  measuredAt: json['measuredAt'] as String,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$UsageDataToJson(_UsageData instance) =>
    <String, dynamic>{
      'usageId': instance.usageId,
      'userId': instance.userId,
      'utilityType': instance.utilityType,
      'usageAmount': instance.usageAmount,
      'unit': instance.unit,
      'currentCharge': instance.currentCharge,
      'measuredAt': instance.measuredAt,
      'createdAt': instance.createdAt,
    };

_UsageDataResponse _$UsageDataResponseFromJson(Map<String, dynamic> json) =>
    _UsageDataResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => UsageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsageDataResponseToJson(_UsageDataResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
