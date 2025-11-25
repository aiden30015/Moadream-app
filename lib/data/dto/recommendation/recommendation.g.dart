// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recommendation _$RecommendationFromJson(Map<String, dynamic> json) =>
    _Recommendation(
      recId: (json['recId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      utilityType: json['utilityType'] as String,
      recType: json['recType'] as String,
      recommendationText: json['recommendationText'] as String,
      expectedSavings: (json['expectedSavings'] as num).toInt(),
      implementationDifficulty: json['implementationDifficulty'] as String,
      isApplied: json['isApplied'] as bool,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$RecommendationToJson(_Recommendation instance) =>
    <String, dynamic>{
      'recId': instance.recId,
      'userId': instance.userId,
      'utilityType': instance.utilityType,
      'recType': instance.recType,
      'recommendationText': instance.recommendationText,
      'expectedSavings': instance.expectedSavings,
      'implementationDifficulty': instance.implementationDifficulty,
      'isApplied': instance.isApplied,
      'createdAt': instance.createdAt,
    };

_RecommendationResponse _$RecommendationResponseFromJson(
  Map<String, dynamic> json,
) => _RecommendationResponse(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$RecommendationResponseToJson(
  _RecommendationResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};
