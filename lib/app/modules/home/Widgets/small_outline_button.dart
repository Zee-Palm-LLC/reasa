import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reasa/app/data/constants.dart';

class CustomSmallOutlineButton extends StatelessWidget {
  final String image;
  final VoidCallback onpressed;
  const CustomSmallOutlineButton({
    Key? key,
    required this.image,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: 88.w,
      child: OutlinedButton(
        style: ButtonStyle(
        side: MaterialStateProperty.all(
            BorderSide(color: CustomColor.kgrey200)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kContRadius))),
      ),
        onPressed: onpressed,
        child: Image.asset(
          image,
          height: 24.h,
          width: 24.w,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
