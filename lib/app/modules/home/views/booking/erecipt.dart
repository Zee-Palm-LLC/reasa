import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/commenttextfeild.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/form_testfeild.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/more_circle.dart';
import 'package:reasa/app/modules/home/Widgets/review_row.dart';
import 'package:reasa/app/modules/home/Widgets/row_button.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/paidtag.dart';

class EreciptScreen extends StatelessWidget {
  EreciptScreen({super.key});

  var fullname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [
                  MoreCircle(onpressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(18.r)),
                        ),
                        backgroundColor: Colors.white,
                        isScrollControlled: true,
                        builder: (context) {
                          return Container(
                              height: 610.h,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Center(
                                      child: Container(
                                        height: 3.h,
                                        width: 38.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24.r),
                                            color: CustomColor.kgrey300),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    Center(
                                      child: "Leave a Review".h4(
                                          color: CustomColor.kgrey900,
                                          fontWeight:
                                              CustomFontWeight.kBoldFontWeight),
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width: 380.w,
                                        child: Divider(
                                          color: CustomColor.kgrey200,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Center(
                                      child:
                                          "How was your experience with\nModernica Apartment?"
                                              .h4(
                                                  color: CustomColor.kgrey900,
                                                  fontWeight: CustomFontWeight
                                                      .kBoldFontWeight,
                                                  textAlign: TextAlign.center),
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 50.0.w),
                                        child: RatingBar(
                                          glowRadius: 1,
                                          initialRating: 0,
                                          direction: Axis.horizontal,
                                          allowHalfRating: false,
                                          itemCount: 5,
                                          ratingWidget: RatingWidget(
                                            full: Icon(
                                              IconlyBold.star,
                                              
                                              color: CustomColor.kprimaryblue,
                                              size: 22.sp,
                                            ),
                                            empty: Icon(
                                              IconlyLight.star,
                                              color: CustomColor.kprimaryblue.withOpacity(0.6),
                                              size: 22.sp,
                                            ),
                                            half: Icon(
                                              IconlyLight.more_circle,
                                              color: CustomColor.kgrey900,
                                              size: 22.sp,
                                            ),
                                          ),
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 8.0.w),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width: 380.w,
                                        child: Divider(
                                          color: CustomColor.kgrey200,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 24.w, bottom: 24.h, top: 18.h),
                                      child: "Write Your Review".h5(
                                          color: CustomColor.kgrey900,
                                          fontWeight:
                                              CustomFontWeight.kBoldFontWeight,
                                          textAlign: TextAlign.center),
                                    ),
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              kContRadius),
                                          color: CustomColor.kgrey50,
                                        ),
                                        height: 140.h,
                                        width: 380.w,
                                        child: CommentTextFeild(
                                          controller: fullname,
                                          textInputType: TextInputType.name,
                                          hintText: "Your review here..",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width: 380.w,
                                        child: Divider(
                                          color: CustomColor.kgrey200,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        RowOutlineButton(
                                          title: 'Maybe Later',
                                          onPressed: () {},
                                        ),
                                        SizedBox(width: 12.w),
                                        RowElevatedButton(
                                          title: 'Submit',
                                          onPressed: () {
                                            // Get.to(() => FaceRecoginationScan());
                                          },
                                        ),
                                      ],
                                    )
                                  ]));
                        });
                  })
                ],
                title: 'E-Receipt',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: Image.asset(
                      CustomAssets.barcode,
                      height: 153.h,
                      width: 380.w,
                      fit: BoxFit.contain,
                    ),
                  ),
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
                  Center(
                    child: Container(
                        height: 198.h,
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
                                title: 'Name',
                                subtitle: 'Andrew Ainsley',
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              ReviewRow(
                                title: 'Phone Number',
                                subtitle: '+1 111 467 378 399',
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  "Transaction ID".medium(
                                    color: CustomColor.kgrey700,
                                    fontWeight:
                                        CustomFontWeight.kMediumFontWeight,
                                  ),
                                  Spacer(),
                                  "5457383979".large(
                                    color: CustomColor.kgrey900,
                                    fontWeight:
                                        CustomFontWeight.kSemiBoldFontWeight,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Image.asset(
                                    CustomAssets.copy,
                                    height: 20.h,
                                    width: 20.w,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(children: [
                                "Status".medium(
                                  color: CustomColor.kgrey700,
                                  fontWeight:
                                      CustomFontWeight.kMediumFontWeight,
                                ),
                                Spacer(),
                                PaidTag(),
                              ]),
                            ],
                          ),
                        )),
                  )
                ]))));
  }
}
