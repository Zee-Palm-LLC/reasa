


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class CustomTabBar extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomTabBar({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: TabBar(
              
       indicatorColor: CustomColor.kprimaryblue,
        labelColor: CustomColor.kprimaryblue,
        labelStyle: CustomTextStyle.kheading6.copyWith(
            color: CustomColor.kprimaryblue,
            fontWeight: CustomFontWeight.kBoldFontWeight),
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: CustomColor.kgrey200,
        unselectedLabelStyle: CustomTextStyle.kheading6.copyWith(
            color: CustomColor.kgrey200,
            fontWeight: CustomFontWeight.kBoldFontWeight),
        tabs: [
          Tab(text: text1),
          Tab(text: text2),
          // Tab(text: "Chats"),
          // Tab(text: "Calls"),
        ],
        
      ),
    );
  }
}

