import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/consult_controller.dart';

class ConsultView extends GetView<ConsultController> {
  const ConsultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConsultView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ConsultView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
