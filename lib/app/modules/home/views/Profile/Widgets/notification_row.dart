


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/Model/setting_notification.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/custom_switch.dart';

class NotificationRow extends StatefulWidget {
  final Settingnotification set;
  const NotificationRow({
    Key? key,
    required this.set,
  }) : super(key: key);

  @override
  State<NotificationRow> createState() => _NotificationRowState();
}

class _NotificationRowState extends State<NotificationRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          widget.set.title.xl(
              color: CustomColor.kgrey900,
              fontWeight: CustomFontWeight.kSemiBoldFontWeight),
          Spacer(),
          CustomSwitch(
              value: widget.set.isValue,
              ontoggle: (val) {
                setState(() {
                  widget.set.isValue = val;
                });
              }),
        ],
      ),
    );
  }
}