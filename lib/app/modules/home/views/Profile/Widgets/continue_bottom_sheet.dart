

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class ContinueBottomScheet extends StatelessWidget {
  final VoidCallback onContinue;
  const ContinueBottomScheet({
    Key? key,
    required this.onContinue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColor.kbackgroundwhite,
        height: 58 + 48.h,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 58.h,
              width: 380.w,
              child: ElevatedButton(
                onPressed: onContinue,
                
              
                child: "Continue".large(
                    color: CustomColor.kbackgroundwhite,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kBigRadius))),
                ),
              ),
            ),
          ],
        ));
  }
}