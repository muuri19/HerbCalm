import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:herbcalm/app/modules/navigation_bar/views/navigation_view.dart';
import 'package:herbcalm/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      enableLog: true,
      defaultTransition: Transition.fade,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: Get.defaultTransitionDuration,
      
    ),
  );
}

class SplashScreen extends StatelessWidget {
const SplashScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return AnimatedSplashScreen(
      splash: Center(
        child: Container(
          height: 60,
          width: 250,
          child: Image.asset('assets/images/logo/logo.png',fit: BoxFit.cover,),
        ),
      ),
      backgroundColor: greenColor,
      nextScreen: NavigationView(),
      duration: 2000,
    );
  }
}
