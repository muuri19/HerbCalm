import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:herbcalm/app/modules/forum/components/card_widget.dart';
import 'package:herbcalm/theme.dart';

import '../controllers/forum_controller.dart';

class ForumView extends GetView<ForumController> {
  const ForumView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: const Text('Forum'),
          centerTitle: true,
          actions: [Icon(Icons.search), SizedBox(width: 20, height: 0.0)],
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              CardWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  CardWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  CardWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  CardWidget(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: 'addForum',
        onPressed: () {},
        backgroundColor: greenColor,
        child: Center(
          child: SvgPicture.asset('assets/svg/forum/addForum.svg'),
        ),
      ),
        );
  }
}
