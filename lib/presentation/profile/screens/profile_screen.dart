import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/core/widget/base_scaffold.dart';
import 'package:hanjeon/presentation/profile/controllers/address_controller.dart';
import 'package:hanjeon/presentation/profile/widget/setting_container.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressList = ref.watch(addressListProvider);
    return BaseScaffold(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(ref),
            const SizedBox(height: 32),
            _buildMenuSection(context),
            const SizedBox(height: 32),
            Divider(color: MoaColor.gray50, thickness: 1.5),
            const SizedBox(height: 8),
            Text('주소 설정', style: MoaTypography.subTitle3(Colors.black)),
            const SizedBox(height: 16),
            ...addressList.asMap().entries.map((entry) {
              final index = entry.key;
              final addr = entry.value;
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: SettingContainer(
                  child: _buildAddressSettingWithDelete(
                    addr['name']!,
                    addr['address']!,
                    '',
                    () {
                      ref.read(addressListProvider.notifier).state = List.from(
                        addressList,
                      )..removeAt(index);
                    },
                  ),
                ),
              );
            }).toList(),
            InkWell(
              onTap: () async {
                final result = await context.push<Map<String, String>>(
                  '/auth/map',
                );
                if (result != null) {
                  ref.read(addressListProvider.notifier).state = [
                    ...addressList,
                    result,
                  ];
                  print('🏠 주소 추가: ${result['name']} - ${result['address']}');
                }
              },
              child: SettingContainer(child: Center(child: MoaIcon.add())),
            ),
            const SizedBox(height: 24),
            Divider(color: MoaColor.gray50, thickness: 1.5),
            const SizedBox(height: 8),
            Text('설정', style: MoaTypography.subTitle3(Colors.black)),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                context.push('/setting/edit_my_page');
              },
              child: _buildSetting(icon: MoaIcon.edit(), label: '마이페이지 편집'),
            ),
            const SizedBox(height: 11),
            InkWell(
              onTap: () {
                context.go('/setting/edit_my_page');
              },
              child: _buildSetting(
                icon: MoaIcon.wallet(),
                label: '자동 납부 카드 등록',
              ),
            ),
            const SizedBox(height: 11),
            InkWell(
              onTap: () {
                // 회원탈퇴 다이얼로그 표시
              },
              child: _buildSetting(
                icon: MoaIcon.exit(),
                label: '회원탈퇴',
                isRed: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(WidgetRef ref) {
    final nickname = useState<String>('사용자');

    useEffect(() {
      Future<void> fetchNickname() async {
        try {
          User user = await UserApi.instance.me();
          String? kakaoNickname = user.kakaoAccount?.profile?.nickname;
          if (kakaoNickname != null && kakaoNickname.isNotEmpty) {
            nickname.value = kakaoNickname;
          }
        } catch (e) {
          print('❌ 카카오 닉네임 가져오기 실패: $e');
        }
      }

      fetchNickname();
      return null;
    }, []);

    return Align(
      alignment: Alignment.bottomLeft,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Text(
              '${nickname.value}님',
              style: TextStyle(
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '총 예산: 200,000원',
              style: MoaTypography.body2(MoaColor.gray500),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              context.push('/setting/auto_payment');
            },
            child: _buildMenuItem(
              icon: MoaIcon.detail_coin_fill(),
              label: '자동 납부 이력',
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              context.push('/setting/bill_month');
            },
            child: _buildMenuItem(icon: MoaIcon.receipt(), label: '이번달 청구서'),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              // AI 상담 화면으로 이동
            },
            child: _buildMenuItem(icon: MoaIcon.chat_fill(), label: 'ai 상담'),
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem({required Widget icon, required String label}) {
    return Column(
      children: [
        icon,
        const SizedBox(height: 18),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(label, style: MoaTypography.body2(MoaColor.gray700)),
        ),
      ],
    );
  }

  Widget _buildAddressSettingWithDelete(
    String title,
    String address,
    String detailAddress,
    VoidCallback onDelete,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: MoaTypography.body1(MoaColor.gray600)),
              const SizedBox(height: 4),
              Text(
                '$address \n$detailAddress',
                style: MoaTypography.body2(MoaColor.gray500),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: PopupMenuButton<String>(
            icon: MoaIcon.menu(),
            padding: EdgeInsets.zero,
            onSelected: (value) {
              if (value == 'delete') {
                onDelete();
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'delete', child: Text('삭제하기')),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSetting({
    required Widget icon,
    required String label,
    bool isRed = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            label,
            style: MoaTypography.body1(
              isRed ? MoaColor.error : MoaColor.gray700,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
