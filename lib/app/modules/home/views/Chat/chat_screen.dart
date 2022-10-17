import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/chatmodel.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/show_menu_pop.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Chat/Widgets/call_listtile.dart';
import 'package:reasa/app/modules/home/views/Chat/Widgets/chatlisttile.dart';
import 'package:reasa/app/modules/home/views/Chat/Widgets/custom_appbar.dart';
import 'package:reasa/app/modules/home/views/Chat/chat_page.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(64 + 41.h),
            child: AppBar(
              leading: Padding(
                padding: EdgeInsets.only(
                    left: 6.w, bottom: 18.h, top: 18.h, right: 0),
                child: Image.asset(
                  CustomAssets.resalog,
                  height: 18.h,
                  width: 18.w,
                  fit: BoxFit.contain,
                ),
              ),
              elevation: 0,
              actions: [
                IconButton(
                  padding: EdgeInsets.zero,
    constraints: BoxConstraints(),
                  icon: Icon(
                    IconlyLight.search,
                    size: 24.sp,
                    color: CustomColor.kgrey900,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 20.w),
                IconButton(
                  padding: EdgeInsets.zero,
    constraints: BoxConstraints(),
                  icon: Icon(
                    IconlyLight.more_circle,
                    size: 24.sp,
                    color: CustomColor.kgrey900,
                  ),
                  onPressed: () {
                    ShowMenuPop(context);
                  },
                ),
                SizedBox(width: 24.w),
              ],
              backgroundColor: CustomColor.kbackgroundwhite,
              title: "Messages".h4(
                  color: CustomColor.kgrey900,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(41.h),
                child: CustomTabBar(
                  text1: 'Chats',
                  text2: 'Calls',
                ),
              ),
            )),
        body: TabBarView(
          children: [
            Column(
              children: [
                Expanded(
                    child: ListView.builder(
                  itemCount: chatlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ChatListTile(chat: chatlist[index],);
                  },
                )),
              ],
            ),
            Column(
              children: [
                Expanded(
                    child: ListView.builder(
                  itemCount: chatlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Calllisttile(chat: chatlist[index],);
                  },
                )),
              ],
            ),
           
          ],
        ),
      ),
    ));
  }
}

