import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/core/widget/base_scaffold.dart';
import 'package:hanjeon/core/widget/moa_appbar.dart';
import 'package:hanjeon/presentation/profile/widget/setting_container.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AutomaticPaymentHistoryScreen extends HookConsumerWidget {
  const AutomaticPaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFilter = useState<String?>(null);

    final allPayments = [
      {
        'month': '10월',
        'category': '전기세',
        'amount': '74,640',
        'userName': '김민솔',
        'account': '토스 뱅크 1234',
        'dueDate': '20',
        'paymentDate': '25.10.20',
      },
      {
        'month': '10월',
        'category': '수도세',
        'amount': '64,845',
        'userName': '김민솔',
        'account': '토스 뱅크 1234',
        'dueDate': '15',
        'paymentDate': '25.10.15',
      },
      {
        'month': '10월',
        'category': '가스비',
        'amount': '8,950',
        'userName': '김민솔',
        'account': '토스 뱅크 1234',
        'dueDate': '25',
        'paymentDate': '25.10.25',
      },
      {
        'month': '9월',
        'category': '전기세',
        'amount': '110,530',
        'userName': '김민솔',
        'account': '토스 뱅크 1234',
        'dueDate': '20',
        'paymentDate': '25.09.20',
      },
      {
        'month': '9월',
        'category': '수도세',
        'amount': '53,490',
        'userName': '김민솔',
        'account': '토스 뱅크 1234',
        'dueDate': '15',
        'paymentDate': '25.09.15',
      },
    ];

    final filteredPayments = selectedFilter.value == null
        ? allPayments
        : allPayments
              .where((payment) => payment['category'] == selectedFilter.value)
              .toList();

    return BaseScaffold(
      appbar: MoaAppbar(title: '자동 납부 이력'),
      child: Column(
        children: [
          Row(
            children: [
              _buildFilterButton('전기세', selectedFilter, MoaColor.yellow400),
              const SizedBox(width: 8),
              _buildFilterButton('수도세', selectedFilter, MoaColor.blue500),
              const SizedBox(width: 8),
              _buildFilterButton('가스비', selectedFilter, MoaColor.green),
            ],
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemCount: filteredPayments.length,
              itemBuilder: (context, index) {
                final payment = filteredPayments[index];
                return AutomaticContainer(
                  month: payment['month']!,
                  category: payment['category']!,
                  amount: payment['amount']!,
                  userName: payment['userName']!,
                  account: payment['account']!,
                  dueDate: payment['dueDate']!,
                  paymentDate: payment['paymentDate']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterButton(
    String label,
    ValueNotifier<String?> selectedFilter,
    Color? color,
  ) {
    final isSelected = selectedFilter.value == label;
    return GestureDetector(
      onTap: () {
        if (selectedFilter.value == label) {
          selectedFilter.value = null;
        } else {
          selectedFilter.value = label;
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? color : Colors.transparent,
          borderRadius: BorderRadius.circular(45),
          border: Border.all(
            color: isSelected ? Colors.transparent : MoaColor.gray300,
            width: 1,
          ),
        ),
        child: Text(
          label,
          style: MoaTypography.body2(
            isSelected ? MoaColor.white : MoaColor.gray300,
          ),
        ),
      ),
    );
  }
}

class AutomaticContainer extends StatelessWidget {
  final String month;
  final String category;
  final String amount;
  final String userName;
  final String account;
  final String dueDate;
  final String paymentDate;

  const AutomaticContainer({
    super.key,
    required this.month,
    required this.category,
    required this.amount,
    required this.userName,
    required this.account,
    required this.dueDate,
    required this.paymentDate,
  });

  @override
  Widget build(BuildContext context) {
    Color getCategoryColor() {
      switch (category) {
        case '전기세':
          return MoaColor.yellow200;
        case '수도세':
          return MoaColor.blue500;
        case '가스비':
          return MoaColor.green;
        default:
          return MoaColor.gray400;
      }
    }

    return SettingContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$month $category 납부',
                style: MoaTypography.body2(MoaColor.gray400),
              ),
              Text(category, style: MoaTypography.caption(getCategoryColor())),
            ],
          ),
          const SizedBox(height: 8),
          Text('$amount원', style: MoaTypography.body1(MoaColor.gray700)),
          const SizedBox(height: 4),
          Text(
            '$userName ($account)',
            style: MoaTypography.body4(MoaColor.gray300),
          ),
          const SizedBox(height: 4),
          Text(
            '매월 $dueDate일 | $paymentDate',
            style: MoaTypography.body4(MoaColor.gray300),
          ),
        ],
      ),
    );
  }
}
