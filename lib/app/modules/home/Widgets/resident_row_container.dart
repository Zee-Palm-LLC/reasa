import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class RowResidentContainer extends StatelessWidget {
  final Resident resident;
  final bool onfavouritepressed;
  final VoidCallback onPressed;
  const RowResidentContainer({
    Key? key,
    required this.resident,
    required this.onfavouritepressed,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 148.h,
        width: 380.w,
        decoration: BoxDecoration(
          boxShadow: boxshadow,
          color: CustomColor.kbackgroundwhite,
          borderRadius: BorderRadius.circular(28.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 14.w, right: 18.w),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(top: 13),
              height: 120.h,
              width: 120.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                image: DecorationImage(
                  image: AssetImage(resident.image),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Row(
                      children: [
                        Spacer(),
                        Container(
                          height: 22.h,
                          width: 46.w,
                          decoration: BoxDecoration(
                            color: CustomColor.kopacitywhite,
                            borderRadius: BorderRadius.circular(kBigRadius),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  IconlyBold.star,
                                  color: CustomColor.kgradientorange,
                                  size: 12.sp,
                                ),
                                SizedBox(width: 4.83.w),
                                resident.rating.toString().small(
                                    color: CustomColor.kprimaryblue,
                                    fontWeight:
                                        CustomFontWeight.kSemiBoldFontWeight),
                              ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: resident.name.h5(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: "${resident.city}, ${resident.countrytag}".medium(
                      color: CustomColor.kgrey700,
                      fontWeight: CustomFontWeight.kRegularWeight),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 35.09.h,
                ),
                InkWell(
                  onTap: () {},
                  child: onfavouritepressed
                      ? Icon(
                          IconlyBold.heart,
                          color: CustomColor.kprimaryblue,
                          size: 20.sp,
                        )
                      : Icon(
                          IconlyLight.heart,
                          color: CustomColor.kprimaryblue,
                          size: 20.sp,
                        ),
                ),
                SizedBox(
                  height: 24.15.h,
                ),
                "\$${resident.prize}".h4(
                    color: CustomColor.kprimaryblue,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                SizedBox(
                  height: 4.h,
                ),
                " / night".xsmall(
                    color: CustomColor.kgrey700,
                    fontWeight: CustomFontWeight.kRegularWeight),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
