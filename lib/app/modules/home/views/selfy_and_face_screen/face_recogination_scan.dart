import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/congratulation_dialog.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/row_button.dart';
import 'package:reasa/app/modules/home/controllers/favourite_controller.dart';
import 'package:reasa/app/modules/home/views/Auth/forget_password_method.dart';
import 'package:reasa/app/modules/home/views/homepage/bottom_nav_bar.dart';
import 'package:reasa/app/modules/home/views/homepage/homepage_screen.dart';

class FaceRecoginationScan extends StatelessWidget {
   FaceRecoginationScan({super.key});
  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48.h),
        child: CustomAppBar(
          action: [],
          title: '',
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: CustomColor.kgrey900,
              )),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 24.h,
        ),
        "Face Recognition".h3(
            color: CustomColor.kgrey900,
            fontWeight: CustomFontWeight.kBoldFontWeight),
        SizedBox(
          height: 19.h,
        ),
        "Add a face recognition to make your account\nmore secure.".xl(
          color: CustomColor.kgrey900,
          fontWeight: CustomFontWeight.kRegularWeight,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 60.h,
        ),
        SvgPicture.asset(
          CustomAssets.corners,
          height: 380.h,
          width: 380.w,
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 16.h,
        ),
        "100%".h1(
          color: CustomColor.kbackgroundwhite,
          fontWeight: CustomFontWeight.kBoldFontWeight,
        ),
        SizedBox(
          height: 16.h,
        ),
        "Verifying your face...".xl(
          color: CustomColor.kbackgroundwhite,
          fontWeight: CustomFontWeight.kMediumFontWeight,
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RowOutlineButton(
              title: 'Skip',
              onPressed: () {},
            ),
            SizedBox(width: 12.w),
            RowElevatedButton(
              title: 'Continue',
              onPressed: () {
                 showLoadingDialog();
                 Timer(Duration(seconds: 3), () {
dismissLoadingDialog();
Get.offAll(() => NavigationBarScreen());
});
                        
                        
              },
            ),
          ],
        )
      ]),
    );
  }
}
