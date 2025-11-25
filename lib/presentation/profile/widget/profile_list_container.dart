import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/presentation/profile/widget/setting_container.dart';

class ProfileListContainer extends StatelessWidget {
  final String title;
  final int itemCount;
  final Widget child;

  const ProfileListContainer({
    super.key,
    required this.title,
    required this.itemCount,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: MoaTypography.subTitle3(MoaColor.gray700)),
        const SizedBox(height: 16),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return SettingContainer(child: child);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemCount: itemCount,
        ),
      ],
    );
  }
}
