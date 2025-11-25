import 'package:freezed_annotation/freezed_annotation.dart';

part 'kakao_login_response.freezed.dart';
part 'kakao_login_response.g.dart';

@freezed
abstract class KakaoLoginResponse with _$KakaoLoginResponse {
  const factory KakaoLoginResponse({
    required String accessToken,
    required String refreshToken,
  }) = _KakaoLoginResponse;

  factory KakaoLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$KakaoLoginResponseFromJson(json);
}
