import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/review_resident__container.dart';
import 'package:reasa/app/modules/home/Widgets/review_row.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/booking/book_real_state.dart';
import 'package:reasa/app/modules/home/views/booking/enter_pin_screen.dart';

class ReviewSummary extends StatelessWidget {
  const ReviewSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Review Summary',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  ResidentReviewContainer(
                    resident: modernicafull,
                  ),
                  SizedBox(height: 24.h),
                  Container(
                      height: 154.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        boxShadow: boxshadow,
                        color: CustomColor.kbackgroundwhite,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.h),
                        child: Column(
                          children: [
                            ReviewRow(
                              title: 'Date',
                              subtitle: 'Dec 23 - Dec 27 2022',
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            ReviewRow(
                              title: 'Check in',
                              subtitle: 'December 23, 2022',
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            ReviewRow(
                              title: 'Check out',
                              subtitle: 'December 27, 2022',
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                      height: 174.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        boxShadow: boxshadow,
                        color: CustomColor.kbackgroundwhite,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.h),
                        child: Column(
                          children: [
                            ReviewRow(
                              title: 'Amount (5 days)',
                              subtitle: '\$145.00',
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            ReviewRow(
                              title: 'Tax',
                              subtitle: '\$5.00',
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 332.w,
                              child: Divider(
                                color: CustomColor.kgrey200,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            ReviewRow(
                              title: 'Total',
                              subtitle: '\$150.00',
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                      height: 80.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        boxShadow: boxshadow,
                        color: CustomColor.kbackgroundwhite,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24.w, 24.h, 18.w, 24.h),
                        child: Row(
                          children: [
                            Image.asset(
                              CustomAssets.mastercard,
                              height: 32.h,
                              width: 32.w,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            "•••• •••• •••• •••• 4679".h6(
                                color: CustomColor.kgrey900,
                                fontWeight: CustomFontWeight.kBoldFontWeight),
                            Spacer(),
                            CustomTextButton(onPressed:  () {
        Get.to(() => BookRealState());
      }, text: 'Change',),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 60.h,
                  ),
                  Center(
                    child: SizedBox(
                      height: 58.h,
                      width: 360.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => EnterPinScreen());
                        },
                        child: "Continue".large(
                            color: CustomColor.kbackgroundwhite,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(kBigRadius)))),
                      ),
                    ),
                  )
                ]))));
  }
}

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size(50, 16),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.topLeft),
      onPressed: onPressed,
      
      child: text.large(
          color: CustomColor.kprimaryblue,
          fontWeight: CustomFontWeight.kBoldFontWeight),
    );
  }
}
//"Change"
