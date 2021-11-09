import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zido_exam/home/bloc/tab_bar_cubit.dart';

import 'home_page.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({Key? key}) : super(key: key);

  static const List<Widget> _children = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage()
  ];

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const TabBarPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabBarCubit(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<TabBarCubit, int>(
              builder: (BuildContext context, int tabBarIndex) {
            return Scaffold(
              body: _children[tabBarIndex],
              bottomNavigationBar: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/bx_bx-home-smile.png',
                      height: 24,
                      width: 24,
                    ),
                    activeIcon: Image.asset(
                      'assets/images/bx_bx-home-smile.png',
                      height: 24,
                      width: 24,
                      color: Theme.of(context).primaryColor,
                    ),
                    label: 'tabBar.home'.tr(),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/eva_shopping-cart-outline.png',
                      height: 24,
                      width: 24,
                    ),
                    activeIcon: Image.asset(
                      'assets/images/eva_shopping-cart-outline.png',
                      height: 24,
                      width: 24,
                      color: Theme.of(context).primaryColor,
                    ),
                    label: 'tabBar.buy'.tr(),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/fluent_add-circle-32-regular.png',
                      height: 24,
                      width: 24,
                    ),
                    activeIcon: Image.asset(
                      'assets/images/fluent_add-circle-32-regular.png',
                      height: 24,
                      width: 24,
                      color: Theme.of(context).primaryColor,
                    ),
                    label: 'tabBar.sell'.tr(),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/Vector.png',
                      height: 24,
                      width: 24,
                    ),
                    activeIcon: Image.asset(
                      'assets/images/Vector.png',
                      height: 24,
                      width: 24,
                      color: Theme.of(context).primaryColor,
                    ),
                    label: 'tabBar.account'.tr(),
                  ),
                ],
                currentIndex: tabBarIndex,
                selectedItemColor: Theme.of(context).primaryColor,
                showUnselectedLabels: true,
                showSelectedLabels: true,
                unselectedItemColor: const Color(0xff99A1AE),
                selectedFontSize: 12,
                unselectedFontSize: 12,
                elevation: 0.0,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                iconSize: 24,
                onTap: (int index) {
                  BlocProvider.of<TabBarCubit>(context).switchTab(index);
                },
              ),
            );
          });
        }
      ),
    );
  }
}
