import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herbcalm/app/auth/login/view/login_page.dart';

class ButtonLogout extends StatelessWidget {
  const ButtonLogout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.dialog(LogoutDialog());
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        child: Center(
          child: Text(
            'Logout',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
class LogoutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Logout'),
      content: Text('Apakah Anda yakin ingin logout?'),
      actions: [
        TextButton(
          onPressed: () {
            // Tutup dialog dan kembali ke halaman login
            Get.offAll(()=>LoginPage());
          },
          child: Text('Ya'),
        ),
        TextButton(
          onPressed: () {
            // Tutup dialog dan lanjutkan sistem
            Get.back();
          },
          child: Text('Tidak'),
        ),
      ],
    );
  }
}
