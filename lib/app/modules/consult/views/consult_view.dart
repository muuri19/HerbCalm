import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:herbcalm/theme.dart';

import '../controllers/consult_controller.dart';

class ConsultView extends GetView<ConsultController> {
  const ConsultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text('Chat'),
        centerTitle: true,
        actions: [Icon(Icons.search), SizedBox(width: 20, height: 0.0)],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: greysColor, borderRadius: BorderRadius.circular(15)),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Center(
          child: SvgPicture.asset('assets/svg/chat/addFloat.svg'),
        ),
      ),
    );
  }
}
