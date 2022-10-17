import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/views/Chat/Widgets/camera_button.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: GetBackIcon(),
            ),
            body: Column(children: [
              SizedBox(height: 636.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                CameraButton(image: CustomAssets.flash, onPressed: () {  },),
                SizedBox(width: 32.w,),
                InkWell(
      onTap: (){},
      child: Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
          border: Border.all(color: CustomColor.kprimaryblue,width: 6.w),
          color: CustomColor.kbacgroundwhiteOpacity,
          shape: BoxShape.circle,
        ),)),
                SizedBox(width: 32.w,),
                CameraButton(image: CustomAssets.revertcamera, onPressed: () {  },),
              ]),
              SizedBox(height: 48.h,),
            ])));
  }
}

