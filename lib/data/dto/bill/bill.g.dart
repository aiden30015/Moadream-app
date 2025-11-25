// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bill _$BillFromJson(Map<String, dynamic> json) => _Bill(
  billId: (json['billId'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  utilityType: json['utilityType'] as String,
  billingMonth: json['billingMonth'] as String,
  totalUsage: (json['totalUsage'] as num?)?.toDouble(),
  totalCharge: (json['totalCharge'] as num?)?.toInt(),
  previousMonthUsage: (json['previousMonthUsage'] as num?)?.toDouble(),
  previousMonthCharge: (json['previousMonthCharge'] as num?)?.toInt(),
  dueDate: json['dueDate'] as String?,
  isPaid: json['isPaid'] as bool? ?? false,
);

Map<String, dynamic> _$BillToJson(_Bill instance) => <String, dynamic>{
  'billId': instance.billId,
  'userId': instance.userId,
  'utilityType': instance.utilityType,
  'billingMonth': instance.billingMonth,
  'totalUsage': instance.totalUsage,
  'totalCharge': instance.totalCharge,
  'previousMonthUsage': instance.previousMonthUsage,
  'previousMonthCharge': instance.previousMonthCharge,
  'dueDate': instance.dueDate,
  'isPaid': instance.isPaid,
};

_BillResponse _$BillResponseFromJson(Map<String, dynamic> json) =>
    _BillResponse(
      success: json['success'] as bool,
      data: Bill.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BillResponseToJson(_BillResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
