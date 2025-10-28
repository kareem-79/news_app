import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/resources/colors_managers.dart';

class ThemeManager {
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: ColorsManagers.black,
    primaryColor: ColorsManagers.black,
    shadowColor: ColorsManagers.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorsManagers.black,
      foregroundColor: ColorsManagers.white,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.white,
      ),
    ),
    drawerTheme: DrawerThemeData(backgroundColor: ColorsManagers.black),
    dividerColor: ColorsManagers.white,
    iconTheme: IconThemeData(color: ColorsManagers.white, size: 24.sp),
    tabBarTheme: TabBarThemeData(
      indicatorColor: ColorsManagers.white,
      dividerColor: Colors.transparent,
      labelStyle: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.white,
      ),
      unselectedLabelStyle: GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.white,
      ),
    ),
    indicatorColor: ColorsManagers.white,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.white,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManagers.black,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManagers.white,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManagers.white,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.gray,
      ),
    ),
  );
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: ColorsManagers.white,
    shadowColor: ColorsManagers.black,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorsManagers.white,
      foregroundColor: ColorsManagers.black,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.black,
      ),
    ),
    drawerTheme: DrawerThemeData(backgroundColor: ColorsManagers.white),
    dividerColor: ColorsManagers.black,
    iconTheme: IconThemeData(color: ColorsManagers.black, size: 24.sp),
    tabBarTheme: TabBarThemeData(
      indicatorColor: ColorsManagers.black,
      dividerColor: Colors.transparent,
      labelStyle: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.white,
      ),
      unselectedLabelStyle: GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.white,
      ),
    ),
    indicatorColor: ColorsManagers.black,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.black,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManagers.white,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManagers.black,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManagers.black,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.gray,
      ),
    ),
  );
}
