import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herbcalm/app/auth/login/view/login_page.dart';
import 'package:herbcalm/firebase_options.dart';
import 'package:herbcalm/theme.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
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
          child: Image.network('https://firebasestorage.googleapis.com/v0/b/herbcalm-9227b.appspot.com/o/assets%2Flogo.png?alt=media&token=432d431a-aad8-4e86-b3c7-a1b8e1b243ca',fit: BoxFit.cover,),
        ),
      ),
      backgroundColor: greenColor,
      nextScreen: LoginPage(),
      duration: 1000,
    );
  }
}
