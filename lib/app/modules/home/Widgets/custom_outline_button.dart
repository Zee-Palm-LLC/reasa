import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class CustomOutlineButton extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onpressed;
  const CustomOutlineButton({
    Key? key,
    required this.image,
    required this.title,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: 380.w,
      child: OutlinedButton(
        onPressed: onpressed,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 24.h,
                width: 24.w,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 12.h),
              title.large(
                  color: CustomColor.kblack,
                  fontWeight: CustomFontWeight.kSemiBoldFontWeight),
            ],
          ),
        ),
      ),
    );
  }
}
