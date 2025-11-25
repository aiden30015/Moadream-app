import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/core/widget/base_scaffold.dart';
import 'package:hanjeon/core/widget/moa_appbar.dart';
import 'package:hanjeon/presentation/auth/screens/map_screen.dart';
import 'package:hanjeon/presentation/auth/widgets/moa_textfield.dart';
import 'package:hanjeon/presentation/profile/controllers/address_controller.dart';
import 'package:hanjeon/presentation/profile/widget/setting_container.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    final numericValue = newValue.text.replaceAll(',', '');
    if (numericValue.isEmpty) {
      return newValue.copyWith(text: '');
    }

    final number = int.tryParse(numericValue);
    if (number == null) {
      return oldValue;
    }

    final formatted = _formatNumber(number);
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }

  String _formatNumber(int number) {
    final str = number.toString();
    final buffer = StringBuffer();
    for (int i = 0; i < str.length; i++) {
      if (i > 0 && (str.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(str[i]);
    }
    return buffer.toString();
  }
}

class EditMyPageScreen extends HookConsumerWidget {
  const EditMyPageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final budgetController = useTextEditingController(text: '200,000');
    final addressList = ref.watch(addressListProvider);

    return BaseScaffold(
      appbar: MoaAppbar(title: '마이페이지 편집'),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MoaTextField(
              formName: '예산 설정',
              hintText: '예산을 입력해주세요',
              controller: budgetController,
              focusNode: useFocusNode(),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                NumberFormatter(),
              ],
            ),
            const SizedBox(height: 24),
            Text('주소 설정', style: MoaTypography.subTitle3(Colors.black)),
            const SizedBox(height: 16),
            ...addressList.asMap().entries.map((entry) {
              final index = entry.key;
              final addr = entry.value;
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: SettingContainer(
                  child: _buildAddressSetting(
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
                final result = await Navigator.of(context)
                    .push<Map<String, String>>(
                      MaterialPageRoute(
                        builder: (context) => const MapScreen(),
                      ),
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
            Text('자동 납부 카드', style: MoaTypography.subTitle3(Colors.black)),
            const SizedBox(height: 16),
            SettingContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('김민솔', style: MoaTypography.body1(MoaColor.gray600)),
                      const SizedBox(height: 8),
                      Text(
                        '국민은행 123456-12-123456',
                        style: MoaTypography.body2(MoaColor.gray500),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: PopupMenuButton<String>(
                      icon: MoaIcon.menu(),
                      padding: EdgeInsets.zero,
                      onSelected: (value) {
                        if (value == 'delete') {
                          // 삭제 로직
                        }
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 'delete',
                          child: Text('삭제하기'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            SettingContainer(child: Center(child: MoaIcon.add())),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressSetting(
    String title,
    String address,
    String detailAddress,
    VoidCallback onDelete,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
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
        ),
      ],
    );
  }
}
