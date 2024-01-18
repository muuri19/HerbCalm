import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:herbcalm/app/modules/home/components/artikel_kesehatan.dart';
import 'package:herbcalm/app/modules/home/components/artikel_obatherbal.dart';
import 'package:herbcalm/theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: greenColor,
          backgroundColor: greenColor,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: greenColor,
              statusBarBrightness: Brightness.light,
              systemNavigationBarIconBrightness: Brightness.light),
          leading: Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          title: Text(
            'Bandung, Indonesia',
            style: textBoldWhite.copyWith(fontSize: 14),
          ),
          actions: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff27A578),
              ),
              child: Center(
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 140, //? Default 350
                color: greenColor,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo! Muuri',
                        style: textBoldWhite.copyWith(fontSize: 24),
                      ),
                      Text(
                        'Selamat datang di HerbCalm',
                        style: textBoldWhite.copyWith(fontSize: 24),
                      )
                    ],
                  ),
                ),
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 120, //? Default 328
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE: TITLE
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 0, 20, 0),
                          child: Container(
                            width: double.infinity,
                            height: 56,
                            decoration: BoxDecoration(
                              color: greysColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x34090F13),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText:
                                        'Cari solusi masalah kesehatanmu...',
                                    hintStyle: textRegularGrey,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: greyColor,
                                    )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 0.0, height: 16),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () => Get.toNamed('/home/obat-herbal'),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: greysColor),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            'assets/svg/home/obatherbal.svg'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Obat Herbal',
                                      style: textSemiBoldBlack.copyWith(
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () => Get.toNamed('/home/intro-konsultasi'),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: greysColor),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            'assets/svg/home/konsultasi.svg'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Konsultasi',
                                      style: textSemiBoldBlack.copyWith(
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () => Get.toNamed('/home/resep-obat'),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: greysColor),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            'assets/svg/home/resepobat.svg'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Resep Obat',
                                      style: textSemiBoldBlack.copyWith(
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () => Get.toNamed('/home/meditasi'),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: greysColor),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            'assets/svg/home/meditasi.svg'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Meditasi',
                                      style: textSemiBoldBlack.copyWith(
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

                          // Container(
                          //     height:
                          //         100, // Sesuaikan dengan tinggi yang diinginkan
                          //     child: ListView(
                          //       scrollDirection: Axis.horizontal,
                          //       physics: BouncingScrollPhysics(),
                          //       children: [
                          //         Column(
                          //           children: [
                          //             Container(
                          //               height: 65,
                          //               width: 65,
                          //               decoration: BoxDecoration(
                          //                   shape: BoxShape.circle,
                          //                   color: greysColor),
                          //               child: Center(
                          //                 child: SvgPicture.asset(
                          //                     'assets/svg/home/obatherbal.svg'),
                          //               ),
                          //             ),
                          //             Text('Obat Herbal')
                          //           ],
                          //         ),
                          //         SizedBox(width: 20, height: 0.0),
                          //         Column(
                          //           children: [
                          //             Container(
                          //               height: 65,
                          //               width: 65,
                          //               decoration: BoxDecoration(
                          //                   shape: BoxShape.circle,
                          //                   color: greysColor),
                          //               child: Center(
                          //                 child: SvgPicture.asset(
                          //                     'assets/svg/home/konsultasi.svg'),
                          //               ),
                          //             ),
                          //             Text('Konsultasi')
                          //           ],
                          //         ),
                          //         SizedBox(width: 20, height: 0.0),
                          //         Column(
                          //           children: [
                          //             Container(
                          //               height: 65,
                          //               width: 65,
                          //               decoration: BoxDecoration(
                          //                   shape: BoxShape.circle,
                          //                   color: greysColor),
                          //               child: Center(
                          //                 child: SvgPicture.asset(
                          //                     'assets/svg/home/resepobat.svg'),
                          //               ),
                          //             ),
                          //             Text('Resep Obat')
                          //           ],
                          //         ),
                          //         SizedBox(width: 20, height: 0.0),
                          //         Column(
                          //           children: [
                          //             Container(
                          //               height: 65,
                          //               width: 65,
                          //               decoration: BoxDecoration(
                          //                   shape: BoxShape.circle,
                          //                   color: greysColor),
                          //               child: Center(
                          //                 child: SvgPicture.asset(
                          //                     'assets/svg/home/meditasi.svg'),
                          //               ),
                          //             ),
                          //             Text('Meditasi'),
                          //           ],
                          //         ),
                          //       ],
                          //     )),
                        ),

                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 20, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Artikel Kesehatan',
                                style: textBoldBlack.copyWith(fontSize: 16),
                              ),
                              Text(
                                'Lihat semua',
                                style: textBoldGreen.copyWith(fontSize: 12),
                              )
                            ],
                          ),
                        ),

                        Container(
                            width: double.infinity,
                            height:
                                250, // Sesuaikan dengan tinggi yang diinginkan
                            child: ArtikelKesehatan()),
                            
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 10, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Artikel Obat Herbal',
                                style: textBoldBlack.copyWith(fontSize: 16),
                              ),
                              Text(
                                'Lihat semua',
                                style: TextStyle(color: greenColor),
                              )
                            ],
                          ),
                        ),

                        Container(
                            width: double.infinity,
                            height:
                                250, // Sesuaikan dengan tinggi yang diinginkan
                            child: ArtikelObatherbal()), // Sini
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
