import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';


import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/paidtag.dart';







class BookingContainer extends StatelessWidget {
  final Resident resident;
  const BookingContainer({
    Key? key,
    required this.resident,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 204.h,
      width: 380.w,
      decoration: BoxDecoration(
        boxShadow: boxshadow,
        color: CustomColor.kbackgroundwhite,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 14.w, right: 18.w),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.only(top: 14),
                height: 120.h,
                width: 120.w,
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
                  SizedBox(height: 23.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: "Modernica Apartment.".h5(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                  SizedBox(height: 14.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: "Dec 23 - 27, 2022 (5 days)".medium(
                        color: CustomColor.kgrey700,
                        fontWeight: CustomFontWeight.kRegularWeight),
                  ),
                  SizedBox(height: 14.h),
                  Padding(
                     padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                
                    "\$${resident.prize}".h4(
                        color: CustomColor.kprimaryblue,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                    SizedBox(
                      width: 4.h,
                    ),
                    " / night".xsmall(
                        color: CustomColor.kgrey700,
                        fontWeight: CustomFontWeight.kRegularWeight),
                    SizedBox(
                      width: 4.h,
                    ),
                    PaidTag(),
                ]
              ),
                  )
                ],
              ),
             
            ]),
          ),
          Center(
            child: SizedBox(
              width: 348.w,
              child: Divider(
                color: CustomColor.kgrey200,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
      height: 32.h,
      width: 168.w,
      child: ElevatedButton(
        onPressed: (){},
        child: "Details".medium(
            color: CustomColor.kbackgroundwhite,
            fontWeight: CustomFontWeight.kSemiBoldFontWeight),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(1),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(CustomColor.kprimaryblue),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kBigRadius))),
        ),
      ),
    ),
    SizedBox(width: 12.w,),
    SizedBox(
      height: 32.h,
      width: 168.w,
      child: OutlinedButton(
        onPressed: (){},
        child: "E-Receipt".medium(
            color: CustomColor.kprimaryblue,
            fontWeight: CustomFontWeight.kSemiBoldFontWeight),),
        ),
            ]
          )

        ],
      ),
    );
  }
}
