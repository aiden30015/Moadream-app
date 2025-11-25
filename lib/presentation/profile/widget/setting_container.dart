import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';

class SettingContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final BorderRadius? borderRadius;

  const SettingContainer({
    super.key,
    this.padding = const EdgeInsets.all(12),
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: borderRadius,
        border: Border.all(color: MoaColor.gray300, width: 1),
      ),
      child: child,
    );
  }
}
