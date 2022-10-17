import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class SMSAndEmalCont extends StatelessWidget {
  final String svg;
  final String titletext;
  final String descripttext;
  final VoidCallback onPressed;
  final bool select;
  const SMSAndEmalCont({
    Key? key,
    required this.svg,
    required this.titletext,
    required this.descripttext,
    required this.onPressed,
    required this.select,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 128.h,
        width: 380.w,
        decoration: BoxDecoration(
          border: Border.all(color: select ? CustomColor.kprimaryblue : CustomColor.kgrey50  , width: 3.w),
          borderRadius: BorderRadius.circular(40.sp),
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(width: 24.w), 
          Image.asset(
            svg,
            // CustomAssets.viasms,
            height: 80.h,
            width: 80.w,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 20.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titletext
                  //"via SMS:"
                  .medium(
                      color: CustomColor.kgrey600,
                      fontWeight: CustomFontWeight.kMediumFontWeight),
              SizedBox(
                height: 8.h,
              ),
              descripttext
                  // "+1 111 ******99"
                  .large(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
            ],
          )
        ]),
      ),
    );
  }
}
