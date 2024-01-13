import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ResepobatView extends GetView {
  const ResepobatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResepobatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResepobatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
