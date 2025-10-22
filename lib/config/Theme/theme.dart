import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/resources/colors_managers.dart';

class ThemeManager{
  static ThemeData dark=ThemeData(
    scaffoldBackgroundColor: ColorsManagers.black,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorsManagers.black,
      foregroundColor: ColorsManagers.white,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.white
      )
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: ColorsManagers.black
    ),
    dividerColor: ColorsManagers.white,
    iconTheme: IconThemeData(color: ColorsManagers.white,size: 24.sp),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.white
      ),
      headlineLarge: GoogleFonts.inter(
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          color: ColorsManagers.black
      ),
      headlineMedium:GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManagers.white
    ),
    )
  );
  static ThemeData light=ThemeData(
      scaffoldBackgroundColor: ColorsManagers.white
  );
}