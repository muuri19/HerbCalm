import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:herbcalm/theme.dart';

class IntroKonsultasiView extends GetView {
  IntroKonsultasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Konsultasi'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      image: AssetImage(
                          'assets/images/konsultasi/intro-konsultasi.png')),
                  Text(
                    'Selamat Datang di Konsultasi',
                    style: textBoldBlack.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Fitur ini memberikan kesempatan pada anda untuk berkonsultasi secara langsung  mengenai keluhan kesehatan bersama dokter kami melalui chat.',
                    style: textRegularGrey.copyWith(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(greenColor)),
                  onPressed: () {
                    showModalBottomSheet(
                        showDragHandle: true,
                        useSafeArea: true,
                        backgroundColor: Colors.white,
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Form Keluhan',
                                    style: textBoldBlack.copyWith(fontSize: 18),
                                  ),
                                  Container(
                                    height: 60,
                                    child: Text(
                                      'Sebelum memulai chat dengan dokter, ayo beritahu kami tentang keluhan anda biar kami carikan dokter yang sesuai untuk anda.',
                                      style: textRegularGrey.copyWith(
                                          fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Wrap(
                                    children: [
                                      Text('Nama'),
                                      TextFormField(
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Muuri Senpai'),
                                      ),
                                      Text('Umur'),
                                      TextFormField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          suffixText: 'Tahun',
                                          border: OutlineInputBorder(),
                                          hintText: 'Masukkan umur anda',
                                        ),
                                      ),
                                      Text('Jenis Kelamin'),
                                      DropdownButtonFormField(
                                        isExpanded: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                        ),
                                        items: <String>['Pria', 'Wanita']
                                            .map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (_) {},
                                      ),
                                      Text('Keluhan'),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        child: TextFormField(
                                          minLines: 10,
                                          maxLines: 10,
                                          keyboardType: TextInputType.multiline,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 15,
                                  ), 
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Ganti nilai sesuai kebutuhan
                                                  ),
                                                ),
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        greenColor)),
                                            onPressed: () {},
                                            child: Container(
                                              width: 100,
                                              height: 50,
                                              child: Center(
                                                  child: Text(
                                                'Masuk',
                                                style: textSemiBoldWhite
                                                    .copyWith(fontSize: 16),
                                              )),
                                            )),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Ganti nilai sesuai kebutuhan
                                                  ),
                                                ),
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        greyColor)),
                                            onPressed: () {
                                              () => Navigator.pop(context);
                                            },
                                            child: Container(
                                              width: 100,
                                              height: 50,
                                              child: Center(
                                                  child: Text(
                                                'Batal',
                                                style: textSemiBoldWhite
                                                    .copyWith(fontSize: 16),
                                              )),
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                    // showModalBottomSheet(
                    //   useSafeArea: true,
                    //   showDragHandle: true,
                    //   isScrollControlled: true,
                    //   elevation: 4,
                    //   backgroundColor: Colors.white,
                    //   context: context,
                    //   builder: (context) {
                    //     return SingleChildScrollView(
                    //       child: Padding(
                    //         padding: const EdgeInsets.all(15.0),
                    //         child: Wrap(
                    //           spacing: 10,
                    //           runSpacing: 10,
                    //           alignment: WrapAlignment.center,
                    //           children: [
                    //             Text(
                    //               'Form Keluhan',
                    //               style: textBoldBlack.copyWith(fontSize: 18),
                    //             ),
                    //             Container(
                    //               height: 60,
                    //               child: Text(
                    //                 'Sebelum memulai chat dengan dokter, ayo beritahu kami tentang keluhan anda biar kami carikan dokter yang sesuai untuk anda.',
                    //                 style: textRegularGrey.copyWith(
                    //                     fontSize: 14),
                    //                 textAlign: TextAlign.center,
                    //               ),
                    //             ),
                    //             Wrap(
                    //               spacing: 10,
                    //               runSpacing: 10,
                    //               children: [
                    //                 Text('Nama'),
                    //                 TextFormField(
                    //                   keyboardType: TextInputType.name,
                    //                   decoration: InputDecoration(
                    //                       border: OutlineInputBorder(),
                    //                       hintText: 'Muuri Senpai'),
                    //                 ),
                    //                 Text('Umur'),
                    //                 TextFormField(
                    //                   keyboardType: TextInputType.number,
                    //                   decoration: InputDecoration(
                    //                     suffixText: 'Tahun',
                    //                     border: OutlineInputBorder(),
                    //                     hintText: 'Masukkan umur anda',
                    //                   ),
                    //                 ),
                    //                 Text('Jenis Kelamin'),
                    //                 DropdownButtonFormField(
                    //                   isExpanded: true,
                    //                   decoration: InputDecoration(
                    //                     border: OutlineInputBorder(),
                    //                   ),
                    //                   items: <String>['Pria', 'Wanita']
                    //                       .map((String value) {
                    //                     return DropdownMenuItem<String>(
                    //                       value: value,
                    //                       child: Text(value),
                    //                     );
                    //                   }).toList(),
                    //                   onChanged: (_) {},
                    //                 ),
                    //                 Text('Keluhan'),
                    //                 Padding(
                    //                   padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    //                   child: TextFormField(
                    //                     minLines: 10,
                    //                     maxLines: 10,
                    //                     keyboardType: TextInputType.multiline,
                    //                     decoration: InputDecoration(
                    //                         border: OutlineInputBorder()),
                    //                   ),
                    //                 ),
                    //                 Container(
                    //               width: MediaQuery.of(context).size.width,
                    //               child: Row(
                    //                 mainAxisAlignment:
                    //                     MainAxisAlignment.spaceEvenly,
                    //                 children: [
                    //                   ElevatedButton(
                    //                       style: ButtonStyle(
                    //                           shape:
                    //                               MaterialStateProperty.all<
                    //                                   RoundedRectangleBorder>(
                    //                             RoundedRectangleBorder(
                    //                               borderRadius:
                    //                                   BorderRadius.circular(
                    //                                       10.0), // Ganti nilai sesuai kebutuhan
                    //                             ),
                    //                           ),
                    //                           backgroundColor:
                    //                               MaterialStatePropertyAll(
                    //                                   greenColor)),
                    //                       onPressed: () {},
                    //                       child: Container(
                    //                         width: 100,
                    //                         height: 50,
                    //                         child: Center(
                    //                             child: Text(
                    //                           'Masuk',
                    //                           style: textSemiBoldWhite
                    //                               .copyWith(fontSize: 16),
                    //                         )),
                    //                       )),
                    //                   ElevatedButton(
                    //                       style: ButtonStyle(
                    //                           shape:
                    //                               MaterialStateProperty.all<
                    //                                   RoundedRectangleBorder>(
                    //                             RoundedRectangleBorder(
                    //                               borderRadius:
                    //                                   BorderRadius.circular(
                    //                                       10.0), // Ganti nilai sesuai kebutuhan
                    //                             ),
                    //                           ),
                    //                           backgroundColor:
                    //                               MaterialStatePropertyAll(
                    //                                   greyColor)),
                    //                       onPressed: () {
                    //                         () => Navigator.pop(context);
                    //                       },
                    //                       child: Container(
                    //                         width: 100,
                    //                         height: 50,
                    //                         child: Center(
                    //                             child: Text(
                    //                           'Batal',
                    //                           style: textSemiBoldWhite
                    //                               .copyWith(fontSize: 16),
                    //                         )),
                    //                       )),
                    //                 ],
                    //               ),
                    //             )
                    //               ],
                    //             ),

                    //           ],
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Center(
                        child: Text(
                      'Lanjutkan',
                      style: textSemiBoldWhite.copyWith(fontSize: 16),
                    )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
