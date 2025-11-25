import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hanjeon/core/network/dio_client.dart';
import 'package:hanjeon/data/dto/auth/request/signup_request.dart';
import 'package:hanjeon/data/repositories/auth_api_client.dart';
import 'package:hanjeon/presentation/auth/state/signup_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiClientProvider = Provider<AuthApiClient>((ref) {
  return AuthApiClient(DioClient.instance);
});

class SignupController extends StateNotifier<SignUpState> {
  final AuthApiClient _apiClient;

  final storage = const FlutterSecureStorage();

  SignupController(this._apiClient) : super(const SignUpState());

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setPhoneNumber(String phoneNumber) {
    state = state.copyWith(phoneNumber: phoneNumber);
  }

  void setRegidentNumber(String regidentNumber) {
    state = state.copyWith(regidentNumber: regidentNumber);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setTelecom(String telecom) {
    state = state.copyWith(telecom: telecom);
  }

  void setVerificationCode(String verificationCode) {
    state = state.copyWith(verificationCode: verificationCode);
  }

  void setAddress(String address) {
    state = state.copyWith(address: address);
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  Future<bool> kakaoLogin(String accessToken, String? email) async {
    try {
      print('📤 카카오 로그인 요청');
      print('토큰 길이: ${accessToken.length}');
      print('카카오 이메일: $email');

      await _apiClient.kakaoLogin(accessToken);

      if (email != null && email.isNotEmpty) {
        state = state.copyWith(email: email);
      }

      return true;
    } catch (e) {
      print('❌ Kakao login error: $e');
      return false;
    }
  }

  Future<bool> signup() async {
    try {
      final email = state.email.isNotEmpty
          ? state.email
          : 'default@example.com';
      const password = '12345678!';

      final request = SignupRequest(
        email: email,
        password: password,
        name: state.name,
        phone: state.phoneNumber,
        address: state.address,
        dateOfBirth: state.regidentNumber.substring(0, 6),
      );

      print('📤 회원가입 요청: ${request.toJson()}');

      try {
        final signupResponse = await _apiClient.signup(request);
        print('✅ 회원가입 성공: ${signupResponse.userId}');
      } catch (signupError) {
        // 회원가입 실패 (이미 존재하는 계정)
        print('⚠️ 회원가입 실패 (기존 계정 존재), 로그인 시도');
      }

      // 회원가입 성공 후 또는 실패 후 자동 로그인
      print('📤 자동 로그인 요청: email=$email');
      final loginResponse = await _apiClient.login(email, password);
      print('✅ 로그인 성공: accessToken=${loginResponse.accessToken}');
      print('✅ 로그인 성공: refreshToken=${loginResponse.refreshToken}');
      print('✅ 로그인 성공: userId=${loginResponse.userId}');

      // 토큰 저장
      await storage.write(key: 'accessToken', value: loginResponse.accessToken);
      await storage.write(
        key: 'refreshToken',
        value: loginResponse.refreshToken,
      );
      await storage.write(
        key: 'userId',
        value: loginResponse.userId.toString(),
      );

      print('✅ userId 저장: ${loginResponse.userId}');
      print('✅ accessToken 저장: ${loginResponse.accessToken}');
      print('✅ refreshToken 저장: ${loginResponse.refreshToken}');

      return true;
    } catch (e) {
      print('❌ Signup/Login error: $e');
      return false;
    }
  }
}

final signUpNotifierProvider =
    StateNotifierProvider<SignupController, SignUpState>(
      (ref) => SignupController(ref.watch(apiClientProvider)),
    );
