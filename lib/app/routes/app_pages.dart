import 'package:get/get.dart';
import 'package:herbcalm/app/auth/login/view/login_page.dart';
import 'package:herbcalm/app/auth/register/view/register_page.dart';
import 'package:herbcalm/app/modules/home/views/intro_konsultasi_view.dart';
import 'package:herbcalm/app/modules/home/views/konsultasi_view.dart';
import 'package:herbcalm/app/modules/home/views/meditasi_view.dart';
import 'package:herbcalm/app/modules/home/views/obatherbal_view.dart';
import 'package:herbcalm/app/modules/home/views/resepobat_view.dart';
import 'package:herbcalm/main.dart';

import '../modules/consult/bindings/consult_binding.dart';
import '../modules/consult/views/consult_view.dart';
import '../modules/forum/bindings/forum_binding.dart';
import '../modules/forum/views/forum_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/navigation_bar/views/navigation_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterPage(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => NavigationView(),
    ),
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: _Paths.OBATHERBAL,
            page: () => ObatherbalView(),
          ),
          GetPage(
              name: _Paths.INTROKONSULTASI,
              page: () => IntroKonsultasiView(),
              children: [
                GetPage(
                  name: _Paths.KONSULTASI,
                  page: () => KonsultasiView(),
                )
              ]),
          GetPage(
            name: _Paths.RESEPOBAT,
            page: () => ResepobatView(),
          ),
          GetPage(
            name: _Paths.MEDITASI,
            page: () => MeditasiView(),
          ),
        ]),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
        name: _Paths.CONSULT,
        page: () => const ConsultView(),
        binding: ConsultBinding(),
        children: [
          // GetPage(name: _Paths.CHAT, page: ChatViewFitur()
          // )
        ]),
    GetPage(
      name: _Paths.FORUM,
      page: () => const ForumView(),
      binding: ForumBinding(),
    ),
  ];
}
