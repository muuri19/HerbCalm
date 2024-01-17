import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:herbcalm/theme.dart';

class IntroKonsultasiView extends GetView {
  const IntroKonsultasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konsultasi'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
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
                  style: textRegularGrey.copyWith(fontSize: 14,),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(onPressed: (){}, child: Text('Lanjutkan'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
