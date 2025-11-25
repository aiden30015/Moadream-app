import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default('') String name,
    @Default('') String phoneNumber,
    @Default('') String regidentNumber,
    @Default('') String password,
    @Default('') String verificationCode,
    @Default('') String telecom,
    @Default('') String verifyCode,
    @Default('') String address,
    @Default('') String email,
  }) = _SignUpState;
}
