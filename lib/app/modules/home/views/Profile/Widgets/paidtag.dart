import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class PaidTag extends StatelessWidget {
  const PaidTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24.h,
        width: 41.w,
        decoration: BoxDecoration(
          border: Border.all(color: CustomColor.kprimaryblue),
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Center(
            child: "Paid".xsmall(
          color: CustomColor.kprimaryblue,
          fontWeight: CustomFontWeight.kSemiBoldFontWeight,
        )));
  }
}
