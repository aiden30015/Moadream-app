import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response.freezed.dart';
part 'signup_response.g.dart';

@freezed
abstract class SignupResponse with _$SignupResponse {
  const factory SignupResponse({
    required int userId,
    required String email,
    required String name,
    required String phone,
    required String address,
    required String dateOfBirth,
    required String userVerificationCode,
    required String createdAt,
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}
