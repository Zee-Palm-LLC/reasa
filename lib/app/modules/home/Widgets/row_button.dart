
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';



class RowOutlineButton extends StatelessWidget {
    final String title;
  final VoidCallback onPressed;
  const RowOutlineButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      width: 184.w,
      child: ElevatedButton(
          onPressed: onPressed,
          child: title.large(
              color: CustomColor.kprimaryblue,
              fontWeight: CustomFontWeight.kBoldFontWeight),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            foregroundColor:
                MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(
                CustomColor.kprimaryblue.withOpacity(0.3)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kBigRadius))),
          )),
    );
  }
}

class RowElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const RowElevatedButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      width: 184.w,
      child: ElevatedButton(
        onPressed: onPressed,
        child: title.large(
            color: CustomColor.kbackgroundwhite,
            fontWeight: CustomFontWeight.kBoldFontWeight),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(1),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(CustomColor.kprimaryblue),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kBigRadius))),
        ),
      ),
    );
  }
}
