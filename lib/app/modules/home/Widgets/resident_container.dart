import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class FeaturedResidentContainer extends StatefulWidget {
  final Resident resident;
  final VoidCallback onPressed;
  final VoidCallback onFavouritePressed;
  const FeaturedResidentContainer({
    Key? key,
    required this.resident,
    required this.onPressed,
    required this.onFavouritePressed,
  }) : super(key: key);

  @override
  State<FeaturedResidentContainer> createState() => _FeaturedResidentContainerState();
}

class _FeaturedResidentContainerState extends State<FeaturedResidentContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: 400.h,
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          image: DecorationImage(
            image: AssetImage(widget.resident.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                children: [
                  Spacer(),
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: CustomColor.kopacitywhite,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            IconlyBold.star,
                            color: CustomColor.kgradientorange,
                            size: 12.sp,
                          ),
                          SizedBox(width: 5.17.w),
                          widget.resident.rating.toString().medium(
                              color: CustomColor.kprimaryblue,
                              fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                        ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 230.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: widget.resident.name.h4(
                  color: CustomColor.kbackgroundwhite,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: "${widget.resident.city}, ${widget.resident.countrytag}".large(
                  color: CustomColor.kbackgroundwhite,
                  fontWeight: CustomFontWeight.kRegularWeight),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Row(
                children: [
                  "\$${widget.resident.prize}".h4(
                      color: CustomColor.kbackgroundwhite,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                  "/ night".medium(
                      color: CustomColor.kbackgroundwhite,
                      fontWeight: CustomFontWeight.kRegularWeight),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                         widget.resident.favourite = !widget.resident.favourite;
                      });
                     
                    },
                    child: widget.resident.favourite
                        ? Icon(
                            IconlyBold.heart,
                            color: CustomColor.kbackgroundwhite,
                            size: 24.sp,
                          )
                        : Icon(
                            IconlyLight.heart,
                            color: CustomColor.kbackgroundwhite,
                            size: 24.sp,
                          ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
