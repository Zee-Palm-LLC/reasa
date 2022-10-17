import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/views/Chat/Widgets/call_buttons.dart';

class VoiceCallScreen extends StatelessWidget {
  const VoiceCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.1,
                0.3,
                0.5,
                0.9,
              ],
              colors: [
                Color.fromARGB(255, 120, 190, 247),
                Color.fromARGB(255, 166, 121, 173),
                Color.fromARGB(255, 233, 159, 183),
                CustomColor.kalertpink,
              ],
            )
       ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Icon(Icons.arrow_back,
        color: CustomColor.kbackgroundwhite,
        )),
          ),
          body: Column(children: [
            SizedBox(height: 177.h),
            CircleAvatar(
              radius: 95.r,
              backgroundImage: AssetImage(CustomAssets.myprofile),
            ),
            SizedBox(height: 24.h),
            "Natasya Wilodra".h3(
                color: CustomColor.kbackgroundwhite,
                fontWeight: CustomFontWeight.kBoldFontWeight),
            SizedBox(height: 24.h),
            "03:25 mins".h6(
                color: CustomColor.kbackgroundwhite,
                fontWeight: CustomFontWeight.kBoldFontWeight),
            SizedBox(height:200.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CallButtons(onPressed: () {  }, icon: IconlyBold.volume_up, bacgroundcolour: CustomColor.kbackgroundwhite.withOpacity(0.3)),
                SizedBox(width: 20.w ,),
                CallButtons(onPressed: () {  }, icon: IconlyBold.voice, bacgroundcolour: CustomColor.kbackgroundwhite.withOpacity(0.3)),
                 SizedBox(width: 20.w ,),
                CallButtons(onPressed: () {  }, icon: IconlyBold.call_missed, bacgroundcolour: CustomColor.kalertpink,),
              ],
            ),
            SizedBox(height: 28.h),
          ]),
        ));
  }
}
