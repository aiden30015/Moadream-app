import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';

class ConfirmButton extends StatelessWidget {
  final bool confirm;
  final VoidCallback? onPressed;
  final String title;

  const ConfirmButton({
    super.key,
    required this.confirm,
    required this.onPressed,
    this.title = '다음',
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: confirm ? onPressed : null,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 33.5, vertical: 12),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        backgroundColor: WidgetStateProperty.all(
          confirm ? MoaColor.blue500 : MoaColor.blue200,
        ),
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 44)),
      ),
      child: Text(title, style: MoaTypography.body1(Colors.white)),
    );
  }
}
