import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:herbcalm/app/modules/consult/components/list_chat.dart';
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
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 16, 20, 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aktif baru-baru ini',
                  style: textBoldBlack.copyWith(fontSize: 16),
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset('assets/images/dokter/dr1.png'),
                          ),
                          Text('Isabelle')
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset('assets/images/dokter/dr2.png'),
                          ),
                          Text('Alexander')
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'Chat Terbaru',
                  style: textBoldBlack.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          Expanded(child: ListChat())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'addChat',
        onPressed: () {
          Get.snackbar('From : Team Development',
              'Mohon maaf untuk fitur ini masih dalam pengembangan');
        },
        backgroundColor: greenColor,
        child: Center(
          child: SvgPicture.asset('assets/svg/chat/addChat.svg'),
        ),
      ),
    );
  }
}
