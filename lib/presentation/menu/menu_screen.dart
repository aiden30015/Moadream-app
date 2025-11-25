import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/core/widget/base_scaffold.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('전체 메뉴', style: MoaTypography.subTitle1(MoaColor.gray700)),
          const SizedBox(height: 36),
          Row(
            children: [
              MoaIcon.wallet(color: MoaColor.gray700),
              const SizedBox(width: 8),
              Text('요금', style: MoaTypography.subTitle3(MoaColor.gray700)),
            ],
          ),
          const SizedBox(height: 16),
          _buildMenuItem('자가 검침'),
          const SizedBox(height: 12),
          _buildMenuItem('요금 단가'),
          const SizedBox(height: 12),
          _buildMenuItem('이체 관리'),
          const SizedBox(height: 32),
          Row(
            children: [
              MoaIcon.service(color: MoaColor.gray700),
              const SizedBox(width: 8),
              Text('설정', style: MoaTypography.body1(MoaColor.gray700)),
            ],
          ),
          const SizedBox(height: 16),
          _buildMenuItem('공지 사항'),
          const SizedBox(height: 12),
          _buildMenuItem('자주하는 질문'),
          const SizedBox(height: 12),
          _buildMenuItem('신고'),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: MoaTypography.subTitle3(MoaColor.gray700)),
        MoaIcon.arrow(color: MoaColor.gray400),
      ],
    );
  }
}
