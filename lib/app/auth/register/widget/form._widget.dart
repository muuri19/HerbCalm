import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herbcalm/app/auth/login/view/login_page.dart';
import 'package:herbcalm/theme.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama'),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Masukkan nama anda'),
            ),
            SizedBox(
              height: 16,
            ),
            Text('Email'),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                  suffix: Text('@gmail.com'),
                  border: OutlineInputBorder(),
                  hintText: 'Masukkan email anda'),
            ),
            SizedBox(
              height: 16,
            ),
            Text('Password'),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Masukkan password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text('Konfirmasi Password'),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Konfirmasi password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(greenColor)),
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Center(
                      child: Text(
                    'Register',
                    style: textSemiBoldWhite.copyWith(fontSize: 16),
                  )),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sudah memili akun ?',
                    style: textBoldBlack.copyWith(fontSize: 12),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.off(()=>LoginPage());
                      },
                      child: Text(
                        'Login',
                        style: textBoldGreen.copyWith(fontSize: 12),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
