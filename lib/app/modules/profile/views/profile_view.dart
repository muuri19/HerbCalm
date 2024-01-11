import 'package:flutter/material.dart';
import 'package:herbcalm/app/modules/profile/components/button_logout.dart';
import 'package:herbcalm/app/modules/profile/components/data_diri.dart';
import 'package:herbcalm/app/modules/profile/components/avatar_banner.dart';
import 'package:herbcalm/app/modules/profile/components/help_contact.dart';
import 'package:herbcalm/app/modules/profile/components/menu_lain.dart';
import 'package:herbcalm/theme.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white, //* Animasi AppBar
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            AvatarBanner(),
            StickyHeader(
              overlapHeaders: false,
              header: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEDF2F7),
                  border: Border(
                    bottom: BorderSide(
                      color: greenColor,
                      width: 2
                    )
                  )
                  
                ),
                alignment: AlignmentDirectional(-1.00, 0.00),
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    'Info',
                    style: TextStyle(fontSize: 18, color: greenColor, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              content: Column(
                children: [
                  DataDiri(),
                  MenuLain(),
                  HelpContact(),
                  ButtonLogout()
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
