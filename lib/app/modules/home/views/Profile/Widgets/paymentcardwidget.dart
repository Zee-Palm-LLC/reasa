

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/Model/card_model.dart';
import 'package:reasa/app/data/constants.dart';

import '../../../../../data/typography.dart';

class PaymentCardWidget extends StatelessWidget {
  final CardModel card;
  const PaymentCardWidget({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80.h,
        width: 380.w,
        decoration: BoxDecoration(
          boxShadow: boxshadow,
          color: CustomColor.kbackgroundwhite,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            children: [
              Image.asset(
               card.image,
                height: 32.h,
                width: 32.w,
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 16.w,
              ),
              card.cardname.h6(
                  color: CustomColor.kgrey900,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
              Spacer(),
              "Connected".large(
                  color: CustomColor.kprimaryblue,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
            ],
          ),
        ),
      ),
    );
  }
}
