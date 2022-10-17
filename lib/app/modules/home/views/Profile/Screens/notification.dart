import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:reasa/app/Model/setting_notification.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/notification_row.dart';

class SettingNotificationScreen extends StatelessWidget {
  const SettingNotificationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Notification',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return NotificationRow(
                        set: mynotification[index],
                      );
                    },
                    itemCount: mynotification.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 40.h,
                      );
                    },
                  ),
                )
              ],
            )));
  }
}


