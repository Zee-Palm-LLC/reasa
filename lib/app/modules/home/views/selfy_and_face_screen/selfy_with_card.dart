import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/row_button.dart';
import 'package:reasa/app/modules/home/views/Auth/pin_screen.dart';
import 'package:reasa/app/modules/home/views/selfy_and_face_screen/set_fingerprint.dart';

class SelfyWithCard extends StatelessWidget {
  const SelfyWithCard({super.key});

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
        SizedBox(height: 24.h),
        "Selfie with ID Card".h3(
            color: CustomColor.kgrey900,
            fontWeight: CustomFontWeight.kBoldFontWeight),
        SizedBox(height: 19.h),
        "Please look at the camera and hold still".xl(
            color: CustomColor.kgrey900,
            fontWeight: CustomFontWeight.kRegularWeight),
        SizedBox(height: 18.h),
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 570.h,
                width: 380.w,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/profilepic.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 94.w,
             bottom: 19.16.h,
              child: Column(
                children: [
                  Container(
                    height: 151.34.h,
                    width: 240.w,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage("assets/Card.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  //SizedBox(height: 19.16.h),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 32.25.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RowOutlineButton(
              title: 'Retake',
              onPressed: () {
               
              },
            ),
            SizedBox(width: 12.w),
            RowElevatedButton(
              title: 'Continue',
              onPressed: () {
                 Get.to(() => CreatePinScreen());
              },
            ),
          ],
        )
      ]),
    );
  }
}
