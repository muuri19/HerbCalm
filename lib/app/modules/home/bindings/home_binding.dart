import 'package:get/get.dart';

import 'package:herbcalm/app/modules/home/controllers/konsultasi_controller.dart';
import 'package:herbcalm/app/modules/home/controllers/obat_herbal_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
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
