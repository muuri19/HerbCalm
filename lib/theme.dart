
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//? This is, How to make theme color in flutter?
Color backgroundColor = const Color(0xff43766C);
Color secondaryColor = const Color(0xff76453B);
Color thirdColor = const Color(0xffB19470);
Color textColor = const Color(0xffF8FAE5);

//? This is, How to make theme font in flutter
TextStyle blackTextStyle = GoogleFonts.nunito(
  fontWeight: FontWeight.w500,
  color: Colors.black 
);
//TODO : How to use this theme
/*
Import file theme -> import 'this path'
------------------
color : greenColor
------------------
Text(
  'Google Font',
  style: blackTextStyle.copyWith(
      fontSize: 25,
  ),
);
------------------
*/
