import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:hanjeon/core/widget/base_scaffold.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/core/route.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 3), () async {
        const storage = FlutterSecureStorage();
        final accessToken = await storage.read(key: 'accessToken');
        final refreshToken = await storage.read(key: 'refreshToken');

        if (accessToken != null && refreshToken != null) {
          context.go(Routes.main);
        } else {
          context.go(Routes.auth);
        }
      });
      return null;
    }, const []);

    return BaseScaffold(child: Center(child: MoaIcon.logo()));
  }
}
