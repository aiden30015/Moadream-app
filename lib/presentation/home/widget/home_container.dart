import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';

class HomeContainer extends StatelessWidget {
  final double? height;
  final Widget child;

  const HomeContainer({super.key, this.height, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: MoaColor.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
