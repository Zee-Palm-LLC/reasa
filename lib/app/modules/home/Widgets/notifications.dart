



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:reasa/app/Model/notification_model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';



class NotificationWidget extends StatelessWidget {
  final NotificationModel notification;
  const NotificationWidget({
    Key? key,
    required this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Image.asset(
            notification.image,
            height: 60.h,
            width: 60.w,
            fit: BoxFit.contain,
          ),
          title: notification.statustitile.h5(
              color: CustomColor.kgrey900,
              fontWeight: CustomFontWeight.kBoldFontWeight),
          subtitle: "${notification.date} | ${notification.time}".medium(
              color: CustomColor.kgrey700,
              fontWeight: CustomFontWeight.kMediumFontWeight),
          trailing: notification.isNew ? Container(
            height: 24.h,
            width: 41.w,
            decoration: BoxDecoration(
              color: CustomColor.kprimaryblue,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child:  Center(
              child: "New".xsmall(
                  color: CustomColor.kbackgroundwhite,
                  fontWeight: CustomFontWeight.kSemiBoldFontWeight),
            ),
          ): SizedBox(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: notification.description
              .medium(
                  color: CustomColor.kgrey800,
                  fontWeight: CustomFontWeight.kRegularWeight),
        ),
        SizedBox(height: 24.h,),
      ],
    );
  }
}

class EmptyNotification extends StatelessWidget {
  const EmptyNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 120.h, bottom: 60.h),
          child: Image.asset(
            CustomAssets.filespng,
            height: 273.31.h,
            width: 280.w,
            fit: BoxFit.contain,
          ),
        ),
        Center(
          child: "Empty".h4(
              color: CustomColor.kgrey900,
              fontWeight: CustomFontWeight.kBoldFontWeight),
        ),
        SizedBox(
          height: 12.h,
        ),
        "You don't have any notifications at this time".xl(
            color: CustomColor.kgrey900,
            fontWeight: CustomFontWeight.kRegularWeight)
      ],
    );
  }
}
