import 'package:flutter/material.dart';

import 'package:get/get.dart';

class KonsultasiView extends GetView {
  const KonsultasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KonsultasiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'KonsultasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
