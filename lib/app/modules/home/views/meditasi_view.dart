import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:herbcalm/app/modules/home/controllers/meditasi_controller.dart';
import 'package:herbcalm/theme.dart';

class MeditasiView extends GetView<MeditasiController> {
  MeditasiView({Key? key}) : super(key: key);
  MeditasiController _meditasiController = Get.put(MeditasiController());
  @override
  Widget build(BuildContext context) {
    _meditasiController.showDialogAfterDelay();
    return Scaffold(
        extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white, //* Animasi AppBar
        title: const Text('Meditasi'),
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
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: greysColor),
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
                          hintText: 'Cari solusi masalahmu...',
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
            child: GridView.count(
          physics: ClampingScrollPhysics(),
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x34090F13),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/herbcalm-9227b.appspot.com/o/assets%2FHomePage%2FMenuMeditasi%2Fmeditasi.png?alt=media&token=83f53c03-bdf0-4d98-b09e-84c44bd4a842',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Meditasi Yoga',
                                style: textBoldBlack.copyWith(fontSize: 16),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Meditasi'),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 16,
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            );
          }),
        )),
      ],
    )));
  }
}
