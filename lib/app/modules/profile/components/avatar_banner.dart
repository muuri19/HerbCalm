import 'package:flutter/material.dart';

class AvatarBanner extends StatefulWidget {
  const AvatarBanner({Key? key}) : super(key: key);

  @override
  _AvatarBannerState createState() => _AvatarBannerState();
}

class _AvatarBannerState extends State<AvatarBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 140,
          color: Color(0xFFF7FAFC),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/herbcalm-9227b.appspot.com/o/Patient_img%2FPas-A2.png?alt=media&token=28abc035-09b5-474a-822b-faabd1203af6'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 4, color: Colors.white),
                                color: Color(0xff319795)),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 16,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(width: 15, height: 0.0),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Muuri-Senpai',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Good morning Muuri!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ]),
          ),
        ),
      ],
    );
  }
}
