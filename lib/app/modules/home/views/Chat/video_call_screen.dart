import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/views/Chat/Widgets/call_buttons.dart';
import 'package:reasa/app/modules/home/views/Chat/voice_call.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(),
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(CustomAssets.natsayafull), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent ,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Icon(Icons.arrow_back,
        color: CustomColor.kbackgroundwhite,
        ),
          ),),
          body: Column(
            children: [
              SizedBox(height: 440.h,),
              Container(
                margin: EdgeInsets.only(left: 248.w, bottom: 16.h),
                height: 180.h,
                width: 120.w,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(
              image: AssetImage(CustomAssets.myprofile), fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              CustomAssets.cameraicon,
              height: 28.h,
              width: 28.w,
              fit: BoxFit.contain,
            ),
          ), 
        ),),
        "03:25 mins".xl(
                color: CustomColor.kbackgroundwhite,
                fontWeight: CustomFontWeight.kBoldFontWeight),
            SizedBox(height:16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CallButtons(onPressed: () {  }, icon: IconlyBold.volume_up, bacgroundcolour: CustomColor.kbackgroundwhite.withOpacity(0.3)),
                SizedBox(width: 20.w ,),
                CallButtons(onPressed: () {  }, icon: IconlyBold.video, bacgroundcolour: CustomColor.kbackgroundwhite.withOpacity(0.3)),
                SizedBox(width: 20.w ,),
                CallButtons(onPressed: () {  }, icon: IconlyBold.voice, bacgroundcolour: CustomColor.kbackgroundwhite.withOpacity(0.3)),
                 SizedBox(width: 20.w ,),
                CallButtons(onPressed: () {  }, icon: IconlyBold.call_missed, bacgroundcolour: CustomColor.kalertpink,),
              ],
            ),



              
            ],
          ),
          
        ),
        );
  }
}
