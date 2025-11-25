import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill.freezed.dart';
part 'bill.g.dart';

@freezed
abstract class Bill with _$Bill {
  const factory Bill({
    required int billId,
    required int userId,
    required String utilityType,
    required String billingMonth,
    double? totalUsage,
    int? totalCharge,
    double? previousMonthUsage,
    int? previousMonthCharge,
    String? dueDate,
    @Default(false) bool isPaid,
  }) = _Bill;

  factory Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);
}

@freezed
abstract class BillResponse with _$BillResponse {
  const factory BillResponse({
    required bool success,
    required List<Bill> data,
    String? message,
  }) = _BillResponse;

  factory BillResponse.fromJson(Map<String, dynamic> json) =>
      _$BillResponseFromJson(json);
}
