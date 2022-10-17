import 'dart:core';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// This class represents the entire app's typography
class CustomTextStyle {
  /// Font Size = 48
  static TextStyle get kheading1 => GoogleFonts.urbanist(
      textStyle: TextStyle(fontSize: ScreenUtil().setSp(48)));

  /// Font Size = 40
  static TextStyle get kheading2 => GoogleFonts.urbanist(
      textStyle: TextStyle(fontSize: ScreenUtil().setSp(40)));

  /// Font Size =32, default heading
  static TextStyle get kheading3 => GoogleFonts.urbanist(
      textStyle: TextStyle(fontSize: ScreenUtil().setSp(32)));

  /// Font Size =24, default heading
  static TextStyle get kheading4 => GoogleFonts.urbanist(
      textStyle: TextStyle(fontSize: ScreenUtil().setSp(24)));

  /// Font Size =20, default heading
  static TextStyle get kheading5 => GoogleFonts.urbanist(
      textStyle: TextStyle(fontSize: ScreenUtil().setSp(20)));

  /// Font Size =18, default heading
  static TextStyle get kheading6 => GoogleFonts.urbanist(
      textStyle: TextStyle(fontSize: ScreenUtil().setSp(18)));
  /// Font Size =16, default heading
  static TextStyle get large => GoogleFonts.urbanist(
      textStyle: TextStyle(fontSize: ScreenUtil().setSp(16)));
  /// Font Size =14, default heading
  static TextStyle get kmedium =>
      GoogleFonts.inter(textStyle: TextStyle(fontSize: ScreenUtil().setSp(14)));
  /// Font Size =12, default heading
  static TextStyle get ksmall =>
      GoogleFonts.inter(textStyle: TextStyle(fontSize: ScreenUtil().setSp(12)));
  /// Font Size =10, default heading
  static TextStyle get kxsmall =>
      GoogleFonts.inter(textStyle: TextStyle(fontSize: ScreenUtil().setSp(10)));
}
class CustomFontWeight {
  static FontWeight kThinFontWeight = FontWeight.w100;
  static FontWeight kExtraLightFontWeight = FontWeight.w200;
  static FontWeight kLightFontWeight = FontWeight.w300;
  static FontWeight kRegularWeight = FontWeight.w400;
  static FontWeight kMediumFontWeight = FontWeight.w500;
  static FontWeight kSemiBoldFontWeight = FontWeight.w600;
  static FontWeight kBoldFontWeight = FontWeight.w700;
  static FontWeight kExtraBoldFontWeight = FontWeight.w800;
  static FontWeight kBlackFontWeight = FontWeight.w900;
}

List<BoxShadow> boxshadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    spreadRadius: 10,
    blurRadius: 20,
    offset: const Offset(1, 1), // changes position of shadow
  )
];

/// h1
extension Heading1 on String{
  Text h1({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: CustomTextStyle.kheading1.copyWith(
            color: color, fontWeight: CustomFontWeight.kBoldFontWeight),
      );
}

extension Heading2 on String {
  Text h2({Color? color, FontWeight? fontWeight,TextAlign?  textAlign}) => Text(
        this,
        style: CustomTextStyle.kheading2.copyWith(
            color: color, fontWeight: CustomFontWeight.kBoldFontWeight),
            textAlign: textAlign,
      );
}

extension Heading3 on String {
  Text h3({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: CustomTextStyle.kheading3.copyWith(
            color: color, fontWeight: CustomFontWeight.kBoldFontWeight),
      );
}

extension Heading4 on String {
  Text h4({Color? color, FontWeight? fontWeight,TextAlign?  textAlign}) => Text(
        this,
        style: CustomTextStyle.kheading4.copyWith(
            color: color, fontWeight: CustomFontWeight.kBoldFontWeight),
            textAlign: textAlign,
      );
}

extension Heading5 on String {
  Text h5({Color? color, FontWeight? fontWeight,TextAlign?  textAlign}) => Text(
        this,
        style: CustomTextStyle.kheading5.copyWith(
            color: color, fontWeight: CustomFontWeight.kBoldFontWeight),
        textAlign: textAlign,
      );
      
}

extension Heading6 on String {
  Text h6({Color? color, FontWeight? fontWeight,  TextAlign?  textAlign}) => Text(
        this,
        style: CustomTextStyle.kheading6.copyWith(
            color: color, fontWeight: CustomFontWeight.kBoldFontWeight),
            textAlign: textAlign,
      );
}

extension Xlarge on String {
  Text xl({Color? color, FontWeight? fontWeight , TextAlign?  textAlign}) => Text(
        this,
        style: CustomTextStyle.kheading6.copyWith(
            color: color, fontWeight: fontWeight,),
            textAlign: textAlign,
      );
}

extension Large on String {
  Text large({Color? color, FontWeight? fontWeight,TextAlign?  textAlign }) => Text(
        this,
        style: CustomTextStyle.large.copyWith(
            color: color, fontWeight: fontWeight,
            
            ),
             textAlign: textAlign,
      );
}

extension Medium on String {
  Text medium({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: CustomTextStyle.kmedium.copyWith(
            color: color, fontWeight: fontWeight),
      );
}

extension Small on String {
  Text small({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: CustomTextStyle.ksmall.copyWith(
            color: color, fontWeight: fontWeight),
      );
}

extension XSmall on String {
  Text xsmall({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: CustomTextStyle.kxsmall.copyWith(
            color: color, fontWeight: fontWeight),
      );
}