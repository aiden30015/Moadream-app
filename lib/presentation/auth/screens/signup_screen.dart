import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hanjeon/core/widget/base_scaffold.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/presentation/auth/controllers/signup_controller.dart';
import 'package:hanjeon/presentation/auth/widgets/confirm_button.dart';
import 'package:hanjeon/presentation/auth/widgets/moa_textfield.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum SignupStep { name, resident, phone, carrier }

enum Carrier {
  skt('SKT'),
  kt('KT'),
  lguPlus('LGU+'),
  sktBudget('SKT 알뜰폰'),
  ktBudget('KT 알뜰폰'),
  lguPlusBudget('LGU+ 알뜰폰');

  final String displayName;
  const Carrier(this.displayName);
}

// 전화번호 포맷터 클래스
class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text.replaceAll('-', '');

    if (text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    final buffer = StringBuffer();

    for (int i = 0; i < text.length && i < 11; i++) {
      if (i == 3 || i == 7) {
        buffer.write('-');
      }
      buffer.write(text[i]);
    }

    final formatted = buffer.toString();

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

class SignupScreen extends HookConsumerWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = useState(SignupStep.name);

    // Controllers
    final nameController = useTextEditingController();
    final nameDisplayController = useTextEditingController();
    final residentFrontController = useTextEditingController();
    final residentBackController = useTextEditingController();
    final phoneController = useTextEditingController();

    // FocusNode
    final nameFocusNode = useFocusNode();
    final phoneFocusNode = useFocusNode();
    final residentFrontFocusNode = useFocusNode();
    final residentBackFocusNode = useFocusNode();

    // Validation states
    final isNameValid = useState(false);
    final isResidentValid = useState(false);
    final isPhoneValid = useState(false);
    final selectedCarrier = useState<Carrier?>(null);

    // Setup listeners
    useEffect(() {
      void nameListener() {
        isNameValid.value = nameController.text.trim().isNotEmpty;
      }

      void residentListener() {
        isResidentValid.value =
            residentFrontController.text.length == 6 &&
            residentBackController.text.length == 1;
      }

      void phoneListener() {
        final digitsOnly = phoneController.text.replaceAll('-', '');
        isPhoneValid.value = digitsOnly.length >= 11;
      }

      nameController.addListener(nameListener);
      residentFrontController.addListener(residentListener);
      residentBackController.addListener(residentListener);
      phoneController.addListener(phoneListener);

      // Initial validation
      nameListener();
      residentListener();
      phoneListener();

      return () {
        nameController.removeListener(nameListener);
        residentFrontController.removeListener(residentListener);
        residentBackController.removeListener(residentListener);
        phoneController.removeListener(phoneListener);
      };
    }, []);

    return BaseScaffold(
      appbar: _SignUpAppbar(
        onBack: () => _handleBackAction(currentStep, isResidentValid),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 72),
          _StepTitle(step: currentStep.value),
          const SizedBox(height: 40),

          // Carrier selection button
          _AnimatedField(
            show: currentStep.value == SignupStep.carrier,
            fieldKey: 'carrier',
            child: _CarrierSelectionButton(
              selectedCarrier: selectedCarrier.value,
              onTap: () => _showCarrierBottomSheet(context, selectedCarrier),
            ),
          ),

          _AnimatedSpacer(show: currentStep.value != SignupStep.name),

          // Phone number field
          _AnimatedField(
            show:
                currentStep.value == SignupStep.phone ||
                currentStep.value == SignupStep.carrier,
            fieldKey: 'phone',
            child: _PhoneNumberField(
              controller: phoneController,
              readOnly: currentStep.value == SignupStep.carrier,
              focusNode: phoneFocusNode,
            ),
          ),

          _AnimatedSpacer(show: currentStep.value != SignupStep.name),

          // Resident number field
          _AnimatedField(
            show:
                currentStep.value == SignupStep.resident ||
                currentStep.value == SignupStep.phone ||
                currentStep.value == SignupStep.carrier,
            fieldKey: 'resident',
            child: _ResidentNumberField(
              frontController: residentFrontController,
              backController: residentBackController,
              readOnly: currentStep.value != SignupStep.resident,
              frontFocusNode: residentFrontFocusNode,
              backFocusNode: residentBackFocusNode,
            ),
          ),

          _AnimatedSpacer(show: currentStep.value != SignupStep.name),

          // Name field
          _NameField(
            currentStep: currentStep.value,
            nameController: nameController,
            nameDisplayController: nameDisplayController,
            focusNode: nameFocusNode,
          ),

          const Spacer(),

          ConfirmButton(
            confirm: _isCurrentStepValid(
              currentStep.value,
              isNameValid.value,
              isResidentValid.value,
              isPhoneValid.value,
              selectedCarrier.value != null,
            ),
            onPressed: () => _handleNextStep(
              context,
              ref,
              currentStep,
              nameController,
              nameDisplayController,
              residentFrontController,
              residentBackController,
              phoneController,
              selectedCarrier,
              nameFocusNode,
              residentFrontFocusNode,
              residentBackFocusNode,
              phoneFocusNode,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  void _handleBackAction(
    ValueNotifier<SignupStep> currentStep,
    ValueNotifier<bool> isResidentValid,
  ) {
    switch (currentStep.value) {
      case SignupStep.carrier:
        currentStep.value = SignupStep.phone;
        break;
      case SignupStep.phone:
        currentStep.value = SignupStep.resident;
        break;
      case SignupStep.resident:
        currentStep.value = SignupStep.name;
        break;
      case SignupStep.name:
        // Do nothing or navigate back
        break;
    }
  }

  bool _isCurrentStepValid(
    SignupStep step,
    bool isNameValid,
    bool isResidentValid,
    bool isPhoneValid,
    bool isCarrierSelected,
  ) {
    switch (step) {
      case SignupStep.name:
        return isNameValid;
      case SignupStep.resident:
        return isResidentValid;
      case SignupStep.phone:
        return isPhoneValid;
      case SignupStep.carrier:
        return isCarrierSelected;
    }
  }

  void _handleNextStep(
    BuildContext context,
    WidgetRef ref,
    ValueNotifier<SignupStep> currentStep,
    TextEditingController nameController,
    TextEditingController nameDisplayController,
    TextEditingController residentFrontController,
    TextEditingController residentBackController,
    TextEditingController phoneController,
    ValueNotifier<Carrier?> selectedCarrier,
    FocusNode nameFocusNode,
    FocusNode residentFrontFocusNode,
    FocusNode residentBackFocusNode,
    FocusNode phoneFocusNode,
  ) {
    // 모든 포커스 해제
    nameFocusNode.unfocus();
    residentFrontFocusNode.unfocus();
    residentBackFocusNode.unfocus();
    phoneFocusNode.unfocus();
    FocusScope.of(context).unfocus();

    final notifier = ref.read(signUpNotifierProvider.notifier);

    switch (currentStep.value) {
      case SignupStep.name:
        notifier.setName(nameController.text.trim());
        nameDisplayController.text = nameController.text.trim();
        currentStep.value = SignupStep.resident;
        break;

      case SignupStep.resident:
        notifier.setRegidentNumber(
          residentFrontController.text + residentBackController.text,
        );
        currentStep.value = SignupStep.phone;
        break;

      case SignupStep.phone:
        final digitsOnly = phoneController.text.replaceAll('-', '');
        notifier.setPhoneNumber(digitsOnly);
        currentStep.value = SignupStep.carrier;
        break;

      case SignupStep.carrier:
        context.go('/auth/verify');
        break;
    }
  }

  void _showCarrierBottomSheet(
    BuildContext context,
    ValueNotifier<Carrier?> selectedCarrier,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _CarrierBottomSheet(
        selectedCarrier: selectedCarrier.value,
        onCarrierSelected: (carrier) {
          selectedCarrier.value = carrier;
          context.pop();
        },
      ),
    );
  }
}

// Widgets

class _StepTitle extends StatelessWidget {
  final SignupStep step;

  const _StepTitle({required this.step});

  @override
  Widget build(BuildContext context) {
    String title;
    String? subtitle;

    switch (step) {
      case SignupStep.name:
        title = '이름을 입력해주세요';
        break;
      case SignupStep.resident:
        title = '주민등록 번호를 입력해주세요';
        break;
      case SignupStep.phone:
        title = '전화번호를 입력해주세요';
        subtitle = '번호만 입력해주세요';
        break;
      case SignupStep.carrier:
        title = '통신사를 선택해주세요';
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: MoaTypography.subTitle1(MoaColor.gray700)),
        if (subtitle != null) ...[
          const SizedBox(height: 8),
          Text(subtitle, style: MoaTypography.body2(MoaColor.gray300)),
        ],
      ],
    );
  }
}

class _AnimatedField extends StatelessWidget {
  final bool show;
  final Widget child;
  final String fieldKey;

  const _AnimatedField({
    required this.show,
    required this.child,
    required this.fieldKey,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (widget, animation) {
        final inAnimation = Tween<Offset>(
          begin: const Offset(0, -0.05),
          end: Offset.zero,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut));

        final outAnimation = Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0, 0.05),
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeIn));

        final childKey = ValueKey(fieldKey);

        return SlideTransition(
          position: widget.key == childKey ? inAnimation : outAnimation,
          child: FadeTransition(opacity: animation, child: widget),
        );
      },
      child: show
          ? KeyedSubtree(key: ValueKey(fieldKey), child: child)
          : const SizedBox.shrink(),
    );
  }
}

class _AnimatedSpacer extends StatelessWidget {
  final bool show;

  const _AnimatedSpacer({required this.show});

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      child: show ? const SizedBox(height: 16) : const SizedBox.shrink(),
    );
  }
}

class _NameField extends StatelessWidget {
  final SignupStep currentStep;
  final TextEditingController nameController;
  final TextEditingController nameDisplayController;
  final FocusNode focusNode;

  const _NameField({
    required this.currentStep,
    required this.nameController,
    required this.nameDisplayController,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final isReadOnly = currentStep != SignupStep.name;

    return MoaTextField(
      key: ValueKey(currentStep),
      formName: "이름",
      hintText: isReadOnly ? nameController.text : "이름을 입력해주세요",
      controller: isReadOnly ? nameDisplayController : nameController,
      readOnly: isReadOnly,
      focusNode: focusNode,
    );
  }
}

class _PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;
  final FocusNode focusNode;

  const _PhoneNumberField({
    required this.controller,
    required this.readOnly,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('전화번호', style: MoaTypography.body1(MoaColor.gray700)),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          focusNode: focusNode,
          readOnly: readOnly,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            PhoneNumberFormatter(),
            LengthLimitingTextInputFormatter(13),
          ],
          style: MoaTypography.body1(MoaColor.gray700),
          decoration: InputDecoration(
            hintText: '전화번호를 입력해주세요',
            hintStyle: MoaTypography.body1(MoaColor.gray300),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 1, color: MoaColor.gray700),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 1, color: MoaColor.gray300),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 1, color: MoaColor.gray300),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
        ),
      ],
    );
  }
}

class _SignUpAppbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBack;

  const _SignUpAppbar({required this.onBack});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MoaColor.backgroundColor,
      leading: IconButton(onPressed: onBack, icon: MoaIcon.back_arrow()),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ResidentNumberField extends HookWidget {
  final TextEditingController? frontController;
  final TextEditingController? backController;
  final bool readOnly;
  final FocusNode? frontFocusNode;
  final FocusNode? backFocusNode;

  const _ResidentNumberField({
    required this.readOnly,
    this.frontController,
    this.backController,
    this.frontFocusNode,
    this.backFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    final frontCtrl = frontController ?? useTextEditingController();
    final backCtrl = backController ?? useTextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('주민등록번호', style: MoaTypography.body1(MoaColor.gray700)),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: _ResidentTextField(
                controller: frontCtrl,
                readOnly: readOnly,
                maxLength: 6,
                textAlign: TextAlign.start,
                onChanged: (value) {
                  if (value.length == 6) backFocusNode!.requestFocus();
                },
                focusNode: frontFocusNode!,
              ),
            ),
            const SizedBox(width: 8),
            Container(width: 12, height: 1, color: MoaColor.gray300),
            const SizedBox(width: 8),
            SizedBox(
              width: 42,
              child: _ResidentTextField(
                controller: backCtrl,
                focusNode: backFocusNode!,
                readOnly: readOnly,
                maxLength: 1,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 8),
            Text('● ● ● ● ● ●', style: TextStyle(color: MoaColor.gray100)),
          ],
        ),
      ],
    );
  }
}

class _ResidentTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool readOnly;
  final int maxLength;
  final TextAlign textAlign;
  final ValueChanged<String>? onChanged;

  const _ResidentTextField({
    required this.controller,
    required this.focusNode,
    required this.readOnly,
    required this.maxLength,
    required this.textAlign,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      readOnly: readOnly,
      keyboardType: TextInputType.number,
      maxLength: maxLength,
      textAlign: textAlign,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      style: MoaTypography.body1(),
      decoration: InputDecoration(
        counterText: '',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: MoaColor.gray700),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: MoaColor.gray300),
        ),
        contentPadding: textAlign == TextAlign.center
            ? EdgeInsets.zero
            : const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      onChanged: onChanged,
    );
  }
}

class _CarrierSelectionButton extends StatelessWidget {
  final Carrier? selectedCarrier;
  final VoidCallback onTap;

  const _CarrierSelectionButton({
    required this.selectedCarrier,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('전화번호', style: MoaTypography.body1(MoaColor.gray700)),
        const SizedBox(height: 8),
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: MoaColor.gray300, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedCarrier?.displayName ?? '통신사를 선택해주세요',
                  style: MoaTypography.body1(
                    selectedCarrier != null
                        ? MoaColor.gray700
                        : MoaColor.gray200,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: MoaColor.gray300,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CarrierBottomSheet extends StatelessWidget {
  final Carrier? selectedCarrier;
  final ValueChanged<Carrier> onCarrierSelected;

  const _CarrierBottomSheet({
    required this.selectedCarrier,
    required this.onCarrierSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '통신사를 선택해주세요',
                  style: MoaTypography.subTitle1(MoaColor.gray900),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close, color: MoaColor.gray700),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ...Carrier.values.map((carrier) {
            final isSelected = selectedCarrier == carrier;
            return InkWell(
              onTap: () => onCarrierSelected(carrier),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      carrier.displayName,
                      style: MoaTypography.body1(
                        isSelected ? MoaColor.gray900 : MoaColor.gray700,
                      ),
                    ),
                    if (isSelected)
                      Icon(Icons.check, color: MoaColor.blue500, size: 20),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
