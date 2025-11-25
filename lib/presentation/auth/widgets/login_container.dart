import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';

class LoginContainer extends HookWidget {
  final Widget logo;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onTap;

  const LoginContainer({
    super.key,
    required this.logo,
    required this.text,
    this.backgroundColor = MoaColor.gray900,
    this.textColor = MoaColor.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 348,
        height: 52,
        padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            logo,
            Center(
              child: Text(text, style: MoaTypography.subTitle4(textColor)),
            ),
            SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
