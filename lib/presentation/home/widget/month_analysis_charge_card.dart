import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';

class MonthAnalysisChargeCard extends StatelessWidget {
  final String title;
  final String amount;
  final Widget? icon;

  const MonthAnalysisChargeCard({
    super.key,
    required this.title,
    required this.amount,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: MoaColor.backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(title, style: MoaTypography.body1(MoaColor.gray700)),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    amount,
                    style: MoaTypography.body2(MoaColor.gray700),
                  ),
                ),
              ),
              if (icon != null) ...[const SizedBox(width: 8), icon!],
            ],
          ),
        ],
      ),
    );
  }
}
