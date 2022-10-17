



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/constants.dart';

class CallButtons extends StatelessWidget {
  final Color bacgroundcolour;
  final VoidCallback onPressed;
  final IconData icon;
  const CallButtons({
    Key? key,
    required this.bacgroundcolour,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          height: 68.h,
          width: 68.w,
          decoration: BoxDecoration(
            color: bacgroundcolour,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 24.sp,
            color: CustomColor.kbackgroundwhite,
          ),
        ));
  }
}
