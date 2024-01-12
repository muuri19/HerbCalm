import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herbcalm/app/modules/consult/views/consult_view.dart';
import 'package:herbcalm/app/modules/forum/views/forum_view.dart';
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
      activeColorPrimary: greenColor,
      inactiveColorPrimary: Colors.grey.withOpacity(0.5),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.chat),
      title: 'Chat',
      activeColorPrimary: greenColor,
      inactiveColorPrimary: Colors.grey.withOpacity(0.5),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.forum),
      title: 'Forum',
      activeColorPrimary: greenColor,
      inactiveColorPrimary: Colors.grey.withOpacity(0.5),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.person),
      title: 'Profile',
      activeColorPrimary: greenColor,
      inactiveColorPrimary: Colors.grey.withOpacity(0.5),
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
        ConsultView(),
        ForumView(),
        ProfileView(),
      ],
      items: _navBarItems,
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.3), 
          width: 1
        )
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all ,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      ),
      
      navBarStyle: NavBarStyle.style14,
      padding: NavBarPadding.symmetric(horizontal: 1),
    );
  }
}
