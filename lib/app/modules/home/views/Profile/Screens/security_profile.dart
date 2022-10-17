import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/setting_notification.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/notification_row.dart';

class SecurityProfileScreen extends StatelessWidget {
  const SecurityProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64.h),
        child: CustomAppBar(
          action: [],
          title: 'Security',
          leading: GetBackIcon(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 24.h,
          ),
          SizedBox(
            height: 190.h,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return NotificationRow(
                  set: security[index],
                );
              },
              itemCount: security.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 40.h,
                );
              },
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 36.h),
              child: Row(
                children: [
                  "Google Authenticator".xl(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                  Spacer(),
                  Icon(
                    IconlyLight.arrow_right_2,
                    size: 24.sp,
                    color: CustomColor.kgrey900,
                  ),
                ],
              ),
            ),
          ),
          CustomBlueButton(title: 'Change PIN', onPressed: () {  },),
          SizedBox(height: 24.h,),
          CustomBlueButton(title: 'Change Password', onPressed: () {  },),
        ],
      ),
    ));
  }
}

class CustomBlueButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomBlueButton({
    Key? key, required this.title, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      width: 380.w,
      child: ElevatedButton(
        onPressed: onPressed,
        child: title.large(
            color: CustomColor.kprimaryblue,
            fontWeight: CustomFontWeight.kBoldFontWeight),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(1),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(CustomColor.kprimaryblue100),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kBigRadius))),
        ),
      ),
    );
  }
}
