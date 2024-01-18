import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:herbcalm/theme.dart';

class ArtikelDeskripsiView extends GetView {
  const ArtikelDeskripsiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deskripsi Artikel'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Mohon Maaf halaman ini masih dalam pengembangan Ide selanjutnya', textAlign: TextAlign.center,
        style: textRegularGrey.copyWith(fontSize: 18),),
      )
    );
  }
}
