import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MeditasiView extends GetView {
  const MeditasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MeditasiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MeditasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
