
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//* THEME COLORS
Color greenColor = const Color(0xff128D61);
Color greysColor = const Color(0xffF2F4F7);
Color greyColor = const Color(0xff757575);



//* TEXT COLORS
Color textWhiteColor = const Color(0xffFFFFFF);
Color textBlackColor = const Color(0xff000000);
Color textGreenColor = const Color(0xff128D61);
Color textGreyColor = const Color(0xff757575);

double edge = 24;


//* TEXT STYLE BOLD = W700
TextStyle textBoldBlack = GoogleFonts.manrope(
  fontWeight: FontWeight.w700,
  color: textBlackColor
);
TextStyle textBoldWhite = GoogleFonts.manrope(
  fontWeight: FontWeight.w700,
  color: textWhiteColor 
);
TextStyle textBoldGreen = GoogleFonts.manrope(
  fontWeight: FontWeight.w700,
  color: textGreenColor                                          
);

//* TEXT STYLE SEMIBOLD = W600
TextStyle textSemiBoldBlack = GoogleFonts.manrope(
  fontWeight: FontWeight.w600,
  color: textBlackColor
);
TextStyle textSemiBoldWhite = GoogleFonts.manrope(
  fontWeight: FontWeight.w600,
  color: textWhiteColor 
);
TextStyle textSemiBoldGreen = GoogleFonts.manrope(
  fontWeight: FontWeight.w600,
  color: textGreenColor                                          
);

//* TEXT STYLE MEDIUM = W500
TextStyle textMediumBlack = GoogleFonts.manrope(
  fontWeight: FontWeight.w500,
  color: Colors.black 
);
TextStyle textMediumWhite = GoogleFonts.manrope(
  fontWeight: FontWeight.w500,
  color: textWhiteColor 
);
TextStyle textMediumGreen = GoogleFonts.manrope(
  fontWeight: FontWeight.w500,
  color: textGreenColor                                          
);

//* TEXT STYLE REGULAR = W400
TextStyle textRegularBlack = GoogleFonts.manrope(
  fontWeight: FontWeight.w400,
  color: textBlackColor
);
TextStyle textRegularWhite = GoogleFonts.manrope(
  fontWeight: FontWeight.w400,
  color: textWhiteColor
);
TextStyle textRegularGreen = GoogleFonts.manrope(
  fontWeight: FontWeight.w400,
  color: textGreenColor
);
TextStyle textRegularGrey = GoogleFonts.manrope(
  fontWeight: FontWeight.w400,
  color: textGreyColor
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
