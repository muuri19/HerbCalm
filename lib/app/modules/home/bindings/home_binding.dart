import 'package:get/get.dart';

import 'package:herbcalm/app/modules/home/controllers/intro_konsultasi_controller.dart';
import 'package:herbcalm/app/modules/home/controllers/konsultasi_controller.dart';
import 'package:herbcalm/app/modules/home/controllers/meditasi_controller.dart';
import 'package:herbcalm/app/modules/home/controllers/obat_herbal_controller.dart';
import 'package:herbcalm/app/modules/home/controllers/resep_obat_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MeditasiController>(
      () => MeditasiController(),
    );
    Get.lazyPut<ResepObatController>(
      () => ResepObatController(),
    );
    Get.lazyPut<IntroKonsultasiController>(
      () => IntroKonsultasiController(),
    );
    Get.lazyPut<ObatHerbalController>(
      () => ObatHerbalController(),
    );
    Get.lazyPut<KonsultasiController>(
      () => KonsultasiController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
