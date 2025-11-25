import 'package:daum_postcode_view/daum_postcode_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hanjeon/core/widget/base_scaffold.dart';
import 'package:hanjeon/core/widget/moa_appbar.dart';
import 'package:hanjeon/presentation/auth/widgets/confirm_button.dart';
import 'package:hanjeon/presentation/auth/widgets/moa_textfield.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapScreen extends HookConsumerWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final nameFocusNode = useFocusNode();
    final selectedAddress = useState<String?>(null);

    return BaseScaffold(
      appbar: MoaAppbar(title: '주소 추가'),
      child: Column(
        children: [
          const SizedBox(height: 52),
          MoaTextField(
            formName: '주소지 이름',
            hintText: '주소지 이름을 입력해주세요',
            controller: nameController,
            focusNode: nameFocusNode,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: DaumPostcodeView(
              onComplete: (viewModel) async {
                selectedAddress.value = viewModel.address;
                print('📍 선택된 주소: ${selectedAddress.value}');
              },
            ),
          ),
          const SizedBox(height: 24),
          ConfirmButton(
            title: '확인',
            confirm: selectedAddress.value != null,
            onPressed: () {
              final address = selectedAddress.value;
              final name = nameController.text.trim();

              if (address == null) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('주소를 선택해주세요')));
                return;
              }

              if (context.mounted) {
                context.pop({
                  'name': name.isEmpty ? '집' : name,
                  'address': address,
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
