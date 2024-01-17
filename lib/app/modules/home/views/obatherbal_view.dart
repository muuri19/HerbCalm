import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:herbcalm/app/modules/home/components/carousel_slider.dart';
import 'package:herbcalm/app/modules/home/components/fitofarmaka_grid.dart';
import 'package:herbcalm/app/modules/home/components/jamu_grid.dart';
import 'package:herbcalm/app/modules/home/components/oht_grid.dart';
import 'package:herbcalm/app/modules/home/controllers/obat_herbal_controller.dart';
import 'package:herbcalm/theme.dart';

class ObatherbalView extends GetView {
  ObatherbalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                                hintText: 'Cari solusi masalah kesehatanmu...',
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

              //? Letal Carousel Slider
              CarouselSliderView(),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Kategori Obat Herbal',
                      style: textBoldBlack.copyWith(fontSize: 16),
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  TabBar(
                      indicatorColor: greenColor,
                      labelColor: greenColor,
                      tabs: [
                        Tab(
                          text: 'Obat Jamu',
                        ),
                        Tab(
                          text: 'Obat OHT',
                        ),
                        Tab(
                          text: 'Fitofarmaka',
                        ),
                      ])
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                JamuGrid(),
                OhtGrid(),
                FitofarmakaGrid(),

                //  Card(
                //   margin: const EdgeInsets.all(16.0),
                //   child: Center(child: Text('Overview tab jamu')),
                // ),
                // Card(
                //   margin: const EdgeInsets.all(16.0),
                //   child: Center(
                //       child: Text('Overview tab OHT')),
                // ),
                // Card(
                //   margin: const EdgeInsets.all(16.0),
                //   child: Center(
                //       child: Text('Overview tab Firofarmaka')),
                // ),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
