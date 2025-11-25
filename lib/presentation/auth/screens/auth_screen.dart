import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/presentation/auth/controllers/signup_controller.dart';
import 'package:hanjeon/presentation/auth/widgets/login_container.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class AuthScreen extends HookConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Spacer(),
                LoginContainer(
                  logo: MoaIcon.apple(),
                  text: '애플로 시작하기',
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                LoginContainer(
                  logo: MoaIcon.kakao(),
                  text: '카카오톡으로 시작하기',
                  backgroundColor: MoaColor.yellow,
                  textColor: MoaColor.gray900,
                  onTap: () async {
                    try {
                      bool installed = await isKakaoTalkInstalled();

                      await (installed
                          ? UserApi.instance.loginWithKakaoTalk()
                          : UserApi.instance.loginWithKakaoAccount());

                      print('✅ 카카오 로그인 성공');

                      // 카카오 사용자 정보 가져오기
                      User user = await UserApi.instance.me();
                      String? email = user.kakaoAccount?.email;
                      String? name = user.kakaoAccount?.profile?.nickname;

                      print('카카오 이메일: $email');
                      print('카카오 이름: $name');

                      if (email == null ||
                          email.isEmpty ||
                          name == null ||
                          name.isEmpty) {
                        print('❌ 카카오 정보 불완전');
                        return;
                      }

                      final notifier = ref.read(
                        signUpNotifierProvider.notifier,
                      );

                      // 카카오 정보로 회원가입 및 로그인
                      notifier.setEmail(email);
                      notifier.setName(name);
                      notifier.setPhoneNumber('010-0000-0000'); // 기본값
                      notifier.setRegidentNumber('1990-01-01'); // 기본값
                      notifier.setAddress("서울시 강남구 테헤란로 123"); // 기본값

                      final success = await notifier.signup();

                      if (success && context.mounted) {
                        context.go('/main');
                      } else {
                        print('❌ 회원가입/로그인 실패');
                      }
                    } catch (e) {
                      print('❌ 카카오 로그인 실패: $e');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
