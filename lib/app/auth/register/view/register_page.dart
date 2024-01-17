import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:herbcalm/app/auth/register/widget/form._widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark

        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           
              Container(
                width: 150,
                height: 50,
                child: Image.asset(
                  'assets/images/logo/logo-white.png',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Container(
                   width: MediaQuery.of(context).size.width,
                   color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: Colors.green,
                      ),
                     
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              FormWidget()
            ],
          ),
        ),
      ),
    );
  }
}
