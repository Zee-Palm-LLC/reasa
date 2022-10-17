import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/row_button.dart';
import 'package:reasa/app/modules/home/views/selfy_and_face_screen/face_recogination.dart';

class SetFingerPrint extends StatelessWidget {
  const SetFingerPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64.h),
        child: CustomAppBar(
          action: [],
          title: 'Set Your Fingerprint',
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

        Padding(
          padding: EdgeInsets.only(top:  74.h , bottom:110.46.w  ),
           child: "Add a fingerprint to make your account\nmore secure.".xl(
            color: CustomColor.kgrey900,
            fontWeight: CustomFontWeight.kRegularWeight,
            textAlign: TextAlign.center,),
         
        ),
              SizedBox(height: 19.16.h),
        Container(
                      height: 236.1.h,
                      width: 228.09.w,
                      decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/touchpad.png"),
                fit: BoxFit.fill,
              ),)),
              Padding(
          padding: EdgeInsets.only(top:  74.h , bottom:80.44.w  ),
            child:"Please put your finger on the fingerprint\nscanner to get started..".xl(
            color: CustomColor.kgrey900,
            fontWeight: CustomFontWeight.kRegularWeight,
            textAlign: TextAlign.center,),
         
        ),
       
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RowOutlineButton(title: 'Skip', onPressed: () { 
             
             },),
            SizedBox(width: 12.w),
            RowElevatedButton(title: 'Continue', onPressed: () { 
               Get.to(() => FaceRecogination());
             },),
          ],
        )
      ]),
    );
  }
}

