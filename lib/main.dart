import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hanjeon/core/route.dart';
import 'package:hanjeon/core/design_system/theme.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Load environment variables
  await dotenv.load(fileName: ".env");

  final storage = FlutterSecureStorage();
  print(await storage.readAll());

  final kakaoAppKey = dotenv.env['KAKAO_NATIVE_APP_KEY'] ?? '';
  KakaoSdk.init(nativeAppKey: kakaoAppKey);

  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: MoaTheme.moaTheme,
        routerConfig: goRouter,
      ),
    );
  }
}
