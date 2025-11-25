// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_comparison.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillComparison _$BillComparisonFromJson(
  Map<String, dynamic> json,
) => _BillComparison(
  currentMonth: json['currentMonth'] as String,
  electricityChangeRate: (json['electricityChangeRate'] as num).toDouble(),
  waterChangeRate: (json['waterChangeRate'] as num).toDouble(),
  gasChangeRate: (json['gasChangeRate'] as num).toDouble(),
  electricityCurrentCharge: (json['electricityCurrentCharge'] as num).toInt(),
  waterCurrentCharge: (json['waterCurrentCharge'] as num).toInt(),
  gasCurrentCharge: (json['gasCurrentCharge'] as num).toInt(),
  electricityPreviousCharge: (json['electricityPreviousCharge'] as num).toInt(),
  waterPreviousCharge: (json['waterPreviousCharge'] as num).toInt(),
  gasPreviousCharge: (json['gasPreviousCharge'] as num).toInt(),
  totalCurrentCharge: (json['totalCurrentCharge'] as num).toInt(),
  totalPreviousCharge: (json['totalPreviousCharge'] as num).toInt(),
  totalChangeRate: (json['totalChangeRate'] as num).toDouble(),
);

Map<String, dynamic> _$BillComparisonToJson(_BillComparison instance) =>
    <String, dynamic>{
      'currentMonth': instance.currentMonth,
      'electricityChangeRate': instance.electricityChangeRate,
      'waterChangeRate': instance.waterChangeRate,
      'gasChangeRate': instance.gasChangeRate,
      'electricityCurrentCharge': instance.electricityCurrentCharge,
      'waterCurrentCharge': instance.waterCurrentCharge,
      'gasCurrentCharge': instance.gasCurrentCharge,
      'electricityPreviousCharge': instance.electricityPreviousCharge,
      'waterPreviousCharge': instance.waterPreviousCharge,
      'gasPreviousCharge': instance.gasPreviousCharge,
      'totalCurrentCharge': instance.totalCurrentCharge,
      'totalPreviousCharge': instance.totalPreviousCharge,
      'totalChangeRate': instance.totalChangeRate,
    };

_BillComparisonResponse _$BillComparisonResponseFromJson(
  Map<String, dynamic> json,
) => _BillComparisonResponse(
  success: json['success'] as bool,
  data: BillComparison.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$BillComparisonResponseToJson(
  _BillComparisonResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};
