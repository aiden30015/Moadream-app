import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/core/widget/base_scaffold.dart';
import 'package:hanjeon/core/widget/moa_appbar.dart';
import 'package:hanjeon/presentation/auth/widgets/confirm_button.dart';
import 'package:hanjeon/presentation/auth/widgets/moa_textfield.dart';

class VerifyScreen extends HookWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final verifyController = useTextEditingController();
    final verifyCodeIsValid = useState(false);
    final verifyFocus = useFocusNode();

    useEffect(() {
      void verifyListener() {
        final text = verifyController.text.trim();
        verifyCodeIsValid.value = text.length == 6;
      }

      verifyController.addListener(verifyListener);
      verifyListener();

      return () => verifyController.removeListener(verifyListener);
    }, [verifyController]);

    return BaseScaffold(
      appbar: MoaAppbar(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 72),
          Text(
            '인증번호 6자리를 입력해주세요',
            style: MoaTypography.subTitle1(MoaColor.gray700),
          ),
          const SizedBox(height: 40),
          MoaTextField(
            formName: '인증번호',
            hintText: '인증번호를 입력해주세요',
            controller: verifyController,
            focusNode: verifyFocus,
            inputFormatters: [LengthLimitingTextInputFormatter(6)],
          ),
          const Spacer(),
          ConfirmButton(
            confirm: verifyCodeIsValid.value,
            onPressed: () {
              context.push('/auth/map');
            },
            title: '확인',
          ),
        ],
      ),
    );
  }
}
