import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:reasa/app/Model/invite_model.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/invite_listtile.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Invite Friends',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              children: [
                // SizedBox(
                //   height: 7.h,
                // ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return InviteListTile(
                        invites: invitelist[index],
                      );
                    },
                    itemCount: invitelist.length,
                  ),
                )
              ],
            )));
  }
}

