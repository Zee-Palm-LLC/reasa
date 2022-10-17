import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/controllers/favourite_controller.dart';

class RecommendedContainer extends StatelessWidget {
  final Resident resident;
  final VoidCallback onPressed;
  final VoidCallback onFavouritePressed;
  bool isFavoruited;
  RecommendedContainer({
    Key? key,
    required this.resident,
    required this.onPressed,
    required this.onFavouritePressed,
    required this.isFavoruited,
  }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 274.h,
        width: 182.w,
        decoration: BoxDecoration(
          boxShadow: boxshadow,
          color: CustomColor.kbackgroundwhite,
          borderRadius: BorderRadius.circular(28.r),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 12.w, right: 12.w, top: 14.h),
              height: 154.h,
              width: 154.w,
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
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: resident.name.h6(
                color: CustomColor.kgrey900,
                fontWeight: CustomFontWeight.kBoldFontWeight),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: "${resident.city}, ${resident.countrytag}".xsmall(
                color: CustomColor.kgrey700,
                fontWeight: CustomFontWeight.kMediumFontWeight),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              children: [
                "\$${resident.prize}".h5(
                    color: CustomColor.kprimaryblue,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                " / night".xsmall(
                    color: CustomColor.kgrey700,
                    fontWeight: CustomFontWeight.kRegularWeight),
                Spacer(),
                InkWell(
                  onTap: onFavouritePressed,
                  child: isFavoruited
                      ? Icon(
                          IconlyBold.heart,
                          color: CustomColor.kprimaryblue,
                          size: 18.sp,
                        )
                      : Icon(
                          IconlyLight.heart,
                          color: CustomColor.kprimaryblue,
                          size: 18.sp,
                        ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
