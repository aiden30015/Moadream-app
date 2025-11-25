import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';

class MoaTextField extends StatelessWidget {
  final String formName;
  final String hintText;
  final TextEditingController? controller;
  final bool readOnly;
  final FocusNode focusNode;
  final List<TextInputFormatter>? inputFormatters; // 추가

  const MoaTextField({
    super.key,
    required this.formName,
    required this.hintText,
    required this.controller,
    this.readOnly = false,
    required this.focusNode,
    this.inputFormatters, // 추가
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(formName, style: MoaTypography.body1(MoaColor.gray700)),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          readOnly: readOnly,
          focusNode: focusNode,
          inputFormatters: inputFormatters,
          style: MoaTypography.body1(),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 1, color: MoaColor.gray700),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 1, color: MoaColor.gray300),
            ),
            hintText: hintText,
            hintStyle: MoaTypography.body2(MoaColor.gray200),
          ),
        ),
      ],
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
