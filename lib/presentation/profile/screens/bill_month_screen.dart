import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/core/widget/base_scaffold.dart';
import 'package:hanjeon/core/widget/moa_appbar.dart';
import 'package:hanjeon/presentation/home/controllers/usage_controller.dart';
import 'package:hanjeon/presentation/profile/widget/setting_container.dart';

class BillMonthScreen extends ConsumerWidget {
  const BillMonthScreen({super.key});

  String _getUtilityName(String utilityType) {
    switch (utilityType) {
      case 'ELECTRICITY':
        return '전기세';
      case 'WATER':
        return '수도세';
      case 'GAS':
        return '가스비';
      default:
        return utilityType;
    }
  }

  String _getUsageUnit(String utilityType) {
    switch (utilityType) {
      case 'ELECTRICITY':
        return 'kWh';
      case 'WATER':
      case 'GAS':
        return 'm³';
      default:
        return '';
    }
  }

  String _formatCurrency(int amount) {
    return amount.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
  }

  Map<String, String> _generateMockFees(String utilityType, int totalCharge) {
    switch (utilityType) {
      case 'ELECTRICITY':
        return {
          '기본 요금': '1,600',
          '전력량 요금': _formatCurrency((totalCharge * 0.8).round()),
          '기후환경요금': _formatCurrency((totalCharge * 0.05).round()),
          '부가세': _formatCurrency((totalCharge * 0.1).round()),
        };
      case 'WATER':
        return {
          '상수도 요금': _formatCurrency((totalCharge * 0.4).round()),
          '하수도 요금': _formatCurrency((totalCharge * 0.3).round()),
          '물이용부담금': _formatCurrency((totalCharge * 0.15).round()),
          '기본 요금': _formatCurrency((totalCharge * 0.15).round()),
        };
      case 'GAS':
        return {
          '기본 요금': _formatCurrency((totalCharge * 0.15).round()),
          '사용량 요금': _formatCurrency((totalCharge * 0.75).round()),
          '부가세': _formatCurrency((totalCharge * 0.1).round()),
        };
      default:
        return {};
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final billsAsync = ref.watch(billsProvider);

    return BaseScaffold(
      appbar: MoaAppbar(title: '이달의 청구서'),
      child: billsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('데이터를 불러올 수 없습니다: $error')),
        data: (bills) {
          if (bills.isEmpty) {
            return const Center(child: Text('청구서 데이터가 없습니다'));
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              final bill = bills[index];
              final totalUsage = bill.totalUsage ?? 0.0;
              final totalCharge = bill.totalCharge ?? 0;

              return BillMonthContainer(
                category: _getUtilityName(bill.utilityType),
                usage: totalUsage.toString(),
                usageUnit: _getUsageUnit(bill.utilityType),
                isPaid: bill.isPaid,
                fees: _generateMockFees(bill.utilityType, totalCharge),
                totalAmount: _formatCurrency(totalCharge),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 24),
            itemCount: bills.length,
          );
        },
      ),
    );
  }
}

class BillMonthContainer extends StatelessWidget {
  final String category;
  final String usage;
  final String usageUnit;
  final bool isPaid;
  final Map<String, String> fees;
  final String totalAmount;

  const BillMonthContainer({
    super.key,
    required this.category,
    required this.usage,
    required this.usageUnit,
    required this.isPaid,
    required this.fees,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return SettingContainer(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      borderRadius: BorderRadius.circular(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(category, style: MoaTypography.subTitle3(MoaColor.gray900)),
              Text(
                isPaid ? '자동 납부 완료' : '미납',
                style: MoaTypography.body2(
                  isPaid ? MoaColor.green : MoaColor.error,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('사용량', style: MoaTypography.body1(MoaColor.gray700)),
              Text(
                '$usage $usageUnit',
                style: MoaTypography.body2(MoaColor.gray500),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text('상세 요금 내역', style: MoaTypography.body1(MoaColor.gray900)),
          const SizedBox(height: 16),
          ...fees.entries.map((entry) {
            return Column(
              children: [
                _buildFeeRow(entry.key, entry.value),
                const SizedBox(height: 8),
              ],
            );
          }),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('총 요금', style: MoaTypography.subTitle4(MoaColor.gray700)),
              Text(
                '$totalAmount원',
                style: MoaTypography.body1(MoaColor.gray700),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeeRow(String label, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            label,
            style: MoaTypography.body2(MoaColor.gray700),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text('$amount원', style: MoaTypography.body2(MoaColor.gray500)),
      ],
    );
  }
}
