import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

ThemeData primaryTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: CustomColor.kprimaryblue,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
            BorderSide(color: CustomColor.kprimaryblue)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBigRadius))),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor:
          MaterialStateProperty.all<Color>(CustomColor.kprimaryblue),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kContRadius))),
    )),
    scaffoldBackgroundColor: CustomColor.kbackgroundwhite,
    textTheme: GoogleFonts.interTextTheme(),
    drawerTheme: DrawerThemeData(backgroundColor: CustomColor.kprimaryblue),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.transparent));
