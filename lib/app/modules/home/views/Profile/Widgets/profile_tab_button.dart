


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class ProfileTabButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;
  const ProfileTabButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 21.5.h),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24.sp,
              color: CustomColor.kgrey900,
            ),
            SizedBox(
              width: 20.w,
            ),
            title.xl(
                color: CustomColor.kgrey900,
                fontWeight: CustomFontWeight.kSemiBoldFontWeight),
            Spacer(),
            Icon(
              IconlyLight.arrow_right_2,
              size: 24.sp,
              color: CustomColor.kgrey900,
            ),
          ],
        ),
      ),
    );
  }
}
