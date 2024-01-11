import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:herbcalm/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: greenColor,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: greenColor, systemNavigationBarColor: Colors.white),
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
                        top: Radius.circular(20),
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
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    prefixIcon: Icon(Icons.search)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 0.0, height: 16),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                          child: Container(
                              height:
                                  100, // Sesuaikan dengan tinggi yang diinginkan
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: greysColor),
                                      ),
                                      Text('Obat Herbal')
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: greysColor),
                                      ),
                                      Text('Konsultasi')
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: greysColor),
                                      ),
                                      Text('Resep Obat')
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: greysColor),
                                      ),
                                      Text('Forum 1'),
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: greysColor),
                                      ),
                                      Text('Forum 2'),
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: greysColor),
                                      ),
                                      Text('Forum 3'),
                                    ],
                                  ),
                                ],
                              )),
                        ),

                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 20, 20, 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Artikel Kesehatan',
                                style: textBoldBlack.copyWith(fontSize: 16),
                              ),
                              Text(
                                'Lihat semua',
                                style: TextStyle(color: greenColor),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                          child: Container(
                              height:
                                  230, // Sesuaikan dengan tinggi yang diinginkan
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            shape: BoxShape.rectangle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/artikelImage/image1.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(width: 0.0, height: 10),
                                      Container(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '7 Cara Mengelola Stres Dengan\nObat Herbal',
                                              style: textBoldBlack.copyWith(
                                                  fontSize: 14),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('Sarah Oktaviani Alam'),
                                                Icon(Icons.arrow_forward)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            shape: BoxShape.rectangle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/artikelImage/image1.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(width: 0.0, height: 10),
                                      Container(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '7 Cara Mengelola Stres Dengan\nObat Herbal',
                                              style: textBoldBlack.copyWith(
                                                  fontSize: 14),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('Sarah Oktaviani Alam'),
                                                Icon(Icons.arrow_forward)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            shape: BoxShape.rectangle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/artikelImage/image1.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(width: 0.0, height: 10),
                                      Container(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '7 Cara Mengelola Stres Dengan\nObat Herbal',
                                              style: textBoldBlack.copyWith(
                                                  fontSize: 14),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('Sarah Oktaviani Alam'),
                                                Icon(Icons.arrow_forward)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  
                                ],
                              )),
                        ),// Sini
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 20, 20, 12),
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

                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                          child: Container(
                              height:
                                  230, // Sesuaikan dengan tinggi yang diinginkan
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            shape: BoxShape.rectangle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/artikelImage/image2.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(width: 0.0, height: 10),
                                      Container(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '7 Cara Mengelola Stres Dengan\nObat Herbal',
                                              style: textBoldBlack.copyWith(
                                                  fontSize: 14),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('Sarah Oktaviani Alam'),
                                                Icon(Icons.arrow_forward)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            shape: BoxShape.rectangle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/artikelImage/image2.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(width: 0.0, height: 10),
                                      Container(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '7 Cara Mengelola Stres Dengan\nObat Herbal',
                                              style: textBoldBlack.copyWith(
                                                  fontSize: 14),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('Sarah Oktaviani Alam'),
                                                Icon(Icons.arrow_forward)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            shape: BoxShape.rectangle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/artikelImage/image2.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(width: 0.0, height: 10),
                                      Container(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '7 Cara Mengelola Stres Dengan\nObat Herbal',
                                              style: textBoldBlack.copyWith(
                                                  fontSize: 14),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('Sarah Oktaviani Alam'),
                                                Icon(Icons.arrow_forward)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20, height: 0.0),
                                  
                                ],
                              )),
                        ),// Sini
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
