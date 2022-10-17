import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/row_button.dart';
import 'package:reasa/app/modules/home/views/selfy_and_face_screen/face_recogination_scan.dart';

class FaceRecogination extends StatelessWidget {
  const FaceRecogination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64.h),
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
        SizedBox(height: 120.5.h),
        Image.asset(
          CustomAssets.facerecogination,
           height: 340.h,
            width: 340.w,
            fit: BoxFit.contain

        )
        // Container(
        //     height: 340.h,
        //     width: 340.w,
        //     decoration: BoxDecoration(
        //       image:  DecorationImage(
        //         image:  AssetImage(CustomAssets.facerecogination),
        //         ,
        //       ),
        //     ))
        ,
        SizedBox(height: 120.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RowOutlineButton(
              title: 'Skip',
              onPressed: () {
                
              },
            ),
            SizedBox(width: 12.w),
            RowElevatedButton(
              title: 'Continue',
              onPressed: () {
                Get.to(() => FaceRecoginationScan());
              },
            ),
          ],
        )
      ]),
    );
  }
}
