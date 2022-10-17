import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';







class SenderTextWidget extends StatelessWidget {
  final String text;
  const SenderTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 300.w,
        decoration: BoxDecoration(
            color: CustomColor.kgrey100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            )),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 190.w,
                  child: text.xl(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kMediumFontWeight),
                ),
                SizedBox(
                  width: 10.w,
                ),
                "16:01".small(
                    color: CustomColor.kgrey500,
                    fontWeight: CustomFontWeight.kMediumFontWeight),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReciverTextWidget extends StatelessWidget {
  final String text;
  const ReciverTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 300.w,
        decoration: BoxDecoration(
            color: CustomColor.kprimaryblue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(8.r),
            )),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
            child: Row(
              
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 196.w,
                  child: text.xl(
                      color: CustomColor.kbackgroundwhite,
                      fontWeight: CustomFontWeight.kMediumFontWeight),
                ),
                SizedBox(
                  width: 8.w,
                ),
                "16:01".small(
                    color: CustomColor.kbackgroundwhite,
                    fontWeight: CustomFontWeight.kMediumFontWeight),
                SizedBox(
                  width: 4.w,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.h),
                  child: Image.asset(
                                CustomAssets.iconcheck,
                                height: 8.h,
                                width: 14.w,
                                fit: BoxFit.contain,
                              ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}