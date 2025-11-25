import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/presentation/home/screens/home_screen.dart';
import 'package:hanjeon/presentation/menu/menu_screen.dart';
import 'package:hanjeon/presentation/profile/screens/profile_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(1);

    final screens = [
      const MenuScreen(),
      const HomeScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: IndexedStack(index: currentIndex.value, children: screens),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: MoaColor.white),
        child: SafeArea(
          child: SizedBox(
            height: 64,
            child: BottomNavigationBar(
              backgroundColor: MoaColor.backgroundColor,
              currentIndex: currentIndex.value,
              onTap: (index) {
                currentIndex.value = index;
              },
              items: [
                BottomNavigationBarItem(
                  icon: MoaIcon.menu_grid(
                    color: currentIndex.value == 0
                        ? MoaColor.gray400
                        : MoaColor.gray200,
                  ),
                  label: '전체메뉴',
                ),
                BottomNavigationBarItem(
                  icon: MoaIcon.home(
                    color: currentIndex.value == 1
                        ? MoaColor.gray400
                        : MoaColor.gray200,
                  ),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: MoaIcon.profile(
                    color: currentIndex.value == 2
                        ? MoaColor.gray400
                        : MoaColor.gray200,
                  ),
                  label: '마이페이지',
                ),
              ],
              selectedItemColor: MoaColor.gray400,
              unselectedItemColor: MoaColor.gray200,
              selectedLabelStyle: MoaTypography.caption(MoaColor.gray400),
              unselectedLabelStyle: MoaTypography.caption(MoaColor.gray200),
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
}
