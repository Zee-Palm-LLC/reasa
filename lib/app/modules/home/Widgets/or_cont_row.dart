
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class OrContinueWithRow extends StatelessWidget {
  const OrContinueWithRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       SizedBox(
                width: 98.0.w,
                child: Divider(color: CustomColor.kgrey200,),
            ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: "or continue with".xl(
              color: CustomColor.kgrey600,
              fontWeight: CustomFontWeight.kSemiBoldFontWeight),
        ),
        SizedBox(
                width: 98.0.w,
                child: Divider(color: CustomColor.kgrey200,),
            ),
      ],
    );
  }
}