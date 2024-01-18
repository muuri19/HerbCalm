import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herbcalm/theme.dart';

class ObatHerbalController extends GetxController {
  RxBool dialogShown = false.obs;

  void showDialogAfterDelay() async {
    await Future.delayed(Duration(seconds: 1));
    if (!dialogShown.value) {
      dialogShown.value = true;
      Get.defaultDialog(
        backgroundColor: Colors.white,
        contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
        buttonColor: greenColor,
        titlePadding: EdgeInsets.only(left: 8, right: 8, top: 10),
        title: "From : Team Development",
        content: Text(
                    "Fitur ini masih dalam pengembangan selanjutnya!.",
                    textAlign: TextAlign.center,
                  ),
        textConfirm: "OK",
        onConfirm: () {
          Get.back();
        },
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    showDialogAfterDelay();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
