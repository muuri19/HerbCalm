import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herbcalm/app/modules/home/views/home_view.dart';
import 'package:herbcalm/app/modules/navigation_bar/controllers/navigation_controller.dart';
import 'package:herbcalm/app/modules/profile/views/profile_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:herbcalm/theme.dart';


class NavigationView extends StatelessWidget {
  NavigationView({Key? key}) : super(key: key);

  final List<PersistentBottomNavBarItem> _navBarItems = [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: 'Home',
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white.withOpacity(0.5),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.person),
      title: 'Profile',
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white.withOpacity(0.5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    print('State Management sudah direfresh!');
    final NavigationController navigationController =
        Get.put(NavigationController());

    return PersistentTabView(
      context,
      controller: navigationController.controller,
      screens: [
        HomeView(),
        ProfileView(),
      ],
      items: _navBarItems,
      confineInSafeArea: true,
      backgroundColor: backgroundColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      // decoration: NavBarDecoration(
      //   borderRadius: BorderRadius.circular(25.0),
      //   colorBehindNavBar: Colors.transparent,
      // ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      ),
      
      navBarStyle: NavBarStyle.style14,
    );
  }
}
