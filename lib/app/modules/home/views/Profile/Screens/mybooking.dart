import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/Model/resident_Model.dart';


import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/show_menu_pop.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Chat/Widgets/custom_appbar.dart';

import 'package:reasa/app/modules/home/views/Chat/chat_screen.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/bookingContainer.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(64 + 41.h),
            child: AppBar(
              leading: GetBackIcon(),
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(
                    IconlyLight.more_circle,
                    size: 24.sp,
                    color: CustomColor.kgrey900,
                  ),
                  onPressed: () {
                    ShowMenuPop(context);
                  },
                ),
              ],
              backgroundColor: CustomColor.kbackgroundwhite,
              title: "My Booking".h4(
                  color: CustomColor.kgrey900,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(41.h),
                child: CustomTabBar(text1: 'Active', text2: 'Completed',),
              ),
            )),
        body: TabBarView(
          children: [
          
            Column(
              children: [
                Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all( 24.h,),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return   BookingContainer(resident: featuredresidents[0],);
                  },
                )),
              ],
            ),
           Column(
             children: [
               Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all( 24.h,),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return   BookingContainer(resident: featuredresidents[0],);
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



 