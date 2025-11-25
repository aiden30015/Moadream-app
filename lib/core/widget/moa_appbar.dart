import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/core/design_system/typography.dart';

class MoaAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const MoaAppbar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MoaColor.backgroundColor,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: MoaIcon.back_arrow(),
      ),
      centerTitle: true,
      title: title != null
          ? Text(title!, style: MoaTypography.subTitle1(MoaColor.gray700))
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
