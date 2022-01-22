import 'package:amaze/constants/colorConst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData getTheme() {
    return _themeData();
  }


    static TextStyle largeText(BuildContext context) {
    return Theme.of(context).textTheme.headline5!.copyWith(
          fontSize: 25.0.sp,
          fontWeight: FontWeight.w700,
          color: textColor,
          fontFamily: GoogleFonts.mulish().fontFamily,
        );
  }

  static TextStyle semiLargeText(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.w700,
          color: textColor,
          fontFamily: GoogleFonts.mulish().fontFamily,
        );
  }

  static TextStyle mediumText(BuildContext context) {
    return Theme.of(context).textTheme.headline6!.copyWith(
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w600,
          color: textColor,
          fontFamily: GoogleFonts.mulish().fontFamily,
        );
  }

  static TextStyle normalText(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 14.0.sp,
          fontWeight: FontWeight.w500,
          color: textColor ,
          fontFamily: GoogleFonts.mulish().fontFamily,
        );
  }

  static TextStyle smallText(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w300,
          color: textColor,
          fontFamily: GoogleFonts.mulish().fontFamily,
        );
  }

  static TextStyle smallestText(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 10.0.sp,
          fontWeight: FontWeight.w300,
          color: textColor,
          fontFamily: GoogleFonts.mulish().fontFamily,
        );
  }

  

  static ThemeData _themeData() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      primaryColor: primaryColor,
      fontFamily: GoogleFonts.mulish().fontFamily,
      colorScheme: ThemeData().colorScheme.copyWith(primary: primaryColorShade2),
      //accentColor: Colors.black,
     // textTheme: _textTheme(),
      //typography: Typography(),
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
    );
  }
}