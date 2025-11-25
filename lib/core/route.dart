import 'package:go_router/go_router.dart';
import 'package:hanjeon/presentation/auth/screens/map_screen.dart';
import 'package:hanjeon/presentation/auth/screens/signup_screen.dart';
import 'package:hanjeon/presentation/main/screens/main_screen.dart';
import 'package:hanjeon/presentation/profile/screens/automatic_payment_history_screen.dart';
import 'package:hanjeon/presentation/profile/screens/bill_month_screen.dart';
import 'package:hanjeon/presentation/profile/screens/edit_my_page_screen.dart';
import 'package:hanjeon/splash_screen.dart';
import 'package:hanjeon/presentation/auth/screens/auth_screen.dart';
import 'package:hanjeon/presentation/auth/screens/verify_screen.dart';

class Routes {
  static const String splash = '/';
  static const String auth = '/auth';
  static const String verify = '/auth/verify';
  static const String map = '/auth/map';

  static const String signUp = '/signUp';

  static const String auto_payment = '/setting/auto_payment';
  static const String billMonth = '/setting/bill_month';
  static const String editMyPage = '/setting/edit_my_page';

  static const String main = '/main';
}

final goRouter = GoRouter(
  initialLocation: Routes.splash,
  routes: [
    GoRoute(
      path: Routes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(path: Routes.auth, builder: (context, state) => const AuthScreen()),
    GoRoute(
      path: Routes.verify,
      builder: (context, state) => const VerifyScreen(),
    ),

    GoRoute(path: Routes.map, builder: (context, state) => const MapScreen()),

    GoRoute(
      path: Routes.auto_payment,
      builder: (context, state) => const AutomaticPaymentHistoryScreen(),
    ),

    GoRoute(
      path: Routes.billMonth,
      builder: (context, state) => const BillMonthScreen(),
    ),
    GoRoute(
      path: Routes.editMyPage,
      builder: (context, state) => const EditMyPageScreen(),
    ),

    GoRoute(
      path: Routes.signUp,
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(path: Routes.main, builder: (context, state) => const MainScreen()),
  ],
);
