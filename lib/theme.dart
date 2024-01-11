
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//? This is, How to make theme color in flutter?
Color greenColor = const Color(0xff128D61);
Color greysColor = const Color(0xffF2F4F7);
Color secondaryColor = const Color(0xff76453B);
Color thirdColor = const Color(0xffB19470);
Color textColor = const Color(0xffF8FAE5);

double edge = 24;
//? This is, How to make theme font in flutter
TextStyle textBoldBlack = GoogleFonts.manrope(
  fontWeight: FontWeight.w700,
  color: Colors.black 
);
TextStyle textBoldWhite = GoogleFonts.manrope(
  fontWeight: FontWeight.w700,
  color: Colors.white 
);
TextStyle textSemiBold = GoogleFonts.manrope(
  fontWeight: FontWeight.w600,
  color: Colors.black 
);
TextStyle textMedium = GoogleFonts.manrope(
  fontWeight: FontWeight.w500,
  color: Colors.black 
);
TextStyle textRegular = GoogleFonts.manrope(
  fontWeight: FontWeight.w400,
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
