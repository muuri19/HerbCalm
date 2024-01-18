import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:herbcalm/app/modules/home/components/list_resepobat.dart';
import 'package:herbcalm/app/modules/home/controllers/resep_obat_controller.dart';
import 'package:herbcalm/theme.dart';

class ResepobatView extends GetView<ResepObatController> {
  ResepobatView({Key? key}) : super(key: key);
  ResepObatController _resepObatController = Get.put(ResepObatController());
  @override
  Widget build(BuildContext context) {
    _resepObatController.showDialogAfterDelay();
    return Scaffold(
        extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white, //* Animasi AppBar
        title: const Text('Resep Obat'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 8, 20, 8),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: greysColor),
                      child: Center(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 46,
                      decoration: BoxDecoration(
                        color: greysColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Cari resep obat herbal...',
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListResepObat(),
            )
          ],
        ),
      ),
    );
  }
}
