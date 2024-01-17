import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ArtikelDeskripsiView extends GetView {
  const ArtikelDeskripsiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArtikelDeskripsiView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Hero(tag: 'bannerArtikelKesehatan', child: Text('Data Hero')),
        ],
      ),
    );
  }
}
