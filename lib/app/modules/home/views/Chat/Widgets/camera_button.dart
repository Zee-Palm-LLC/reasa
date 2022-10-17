


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/constants.dart';

class CameraButton extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;
  const CameraButton({
    Key? key,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 68.h,
        width: 68.w,
        decoration: BoxDecoration(
          color: CustomColor.kbacgroundwhiteOpacity,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            image,
            height: 28.h,
            width: 28.w,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
