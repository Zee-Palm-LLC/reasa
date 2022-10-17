import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/notification_model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/notifications.dart';
import 'package:reasa/app/modules/home/Widgets/show_menu_pop.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [
                  InkWell(
                    onTap: () {
                      ShowMenuPop(context);
                    },
                    child: Icon(
                      IconlyLight.more_circle,
                      size: 24.sp,
                      color: CustomColor.kgrey900,
                    ),
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                ],
                title: 'Notification',
                leading: GetBackIcon(),
              ),
            ),
            body: ListView.builder(
              padding: EdgeInsets.only(top: 9.h, right: 9.w),
              itemCount: notifications.length,
              itemBuilder: (BuildContext context, int index) {
                return NotificationWidget(notification: notifications[index]);
              },
            )));
  }
}
