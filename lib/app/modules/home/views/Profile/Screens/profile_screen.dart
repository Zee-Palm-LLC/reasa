import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/row_button.dart';
import 'package:reasa/app/modules/home/Widgets/show_menu_pop.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Auth/let_you_in.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/Language_scree.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/helpcenter.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/invite_friends.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/mybooking.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/notification.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/payment.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/security_profile.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/update_profile.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/custom_switch.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/profile_tab_button.dart';
import 'package:reasa/app/modules/home/views/notification/notification_Screen.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [
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
                title: 'Profile',
                leading: SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 6.w, bottom: 18.h, top: 18.h, right: 0),
                    child: Image.asset(
                      CustomAssets.accountpng,
                      height: 24.h,
                      width: 24.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    Center(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 70.r,
                            backgroundColor: Colors.grey.withOpacity(0.09),
                            backgroundImage: AssetImage(
                              CustomAssets.profilepic,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/addimage.svg",
                            height: 33.33.h,
                            width: 33.33.w,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    "Andrew Ainsley".h4(
                        color: CustomColor.kgrey800,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.h),
                      child: SizedBox(
                        width: 380.w,
                        child: Divider(
                          color: CustomColor.kgrey200,
                        ),
                      ),
                    ),
                    ProfileTabButton(
                      title: 'My Booking',
                      icon: IconlyLight.calendar,
                      onPressed: () {
                        Get.to(() => MyBookingsScreen());
                      },
                    ),
                    ProfileTabButton(
                      title: 'Payments',
                      icon: IconlyLight.wallet,
                      onPressed: () {
                        Get.to(() => PaymentScreen());
                      },
                    ),
                    SizedBox(
                      width: 380.w,
                      child: Divider(
                        color: CustomColor.kgrey200,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    ProfileTabButton(
                      title: 'Profile',
                      icon: IconlyLight.profile,
                      onPressed: () {
                        Get.to(() => UpdateProfileScreen());
                      },
                    ),
                    ProfileTabButton(
                      title: 'Notification',
                      icon: IconlyLight.calendar,
                      onPressed: () {
                        Get.to(() => SettingNotificationScreen());
                      },
                    ),
                    ProfileTabButton(
                      title: 'Security',
                      icon: IconlyLight.shield_done,
                      onPressed: () {
                        Get.to(() => SecurityProfileScreen());
                      },
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => LanguageScreen());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 24.w, right: 24.w, bottom: 21.5.h),
                        child: Row(
                          children: [
                            Icon(
                              IconlyLight.more_circle,
                              size: 24.sp,
                              color: CustomColor.kgrey900,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            "Language".xl(
                                color: CustomColor.kgrey900,
                                fontWeight:
                                    CustomFontWeight.kSemiBoldFontWeight),
                            Spacer(),
                            "English (US)".xl(
                                color: CustomColor.kgrey900,
                                fontWeight:
                                    CustomFontWeight.kSemiBoldFontWeight),
                            SizedBox(
                              width: 20.w,
                            ),
                            Icon(
                              IconlyLight.arrow_right_2,
                              size: 24.sp,
                              color: CustomColor.kgrey900,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 24.w, right: 24.w, bottom: 21.5.h),
                        child: Row(
                          children: [
                            Icon(
                              IconlyLight.show,
                              size: 24.sp,
                              color: CustomColor.kgrey900,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            "Dark Mode".xl(
                                color: CustomColor.kgrey900,
                                fontWeight:
                                    CustomFontWeight.kSemiBoldFontWeight),
                            Spacer(),
                            CustomSwitch(
                                value: status,
                                ontoggle: (val) {
                                  setState(() {
                                    status = val;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    ProfileTabButton(
                      title: 'Help Center',
                      icon: IconlyLight.info_square,
                      onPressed: () {
                        Get.to(() => HelpCenterScreen());
                      },
                    ),
                    ProfileTabButton(
                      title: 'Invite Friends',
                      icon: IconlyLight.calendar,
                      onPressed: () {
                        Get.to(() => InviteFriendsScreen());
                      },
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(18.r)),
                            ),
                            backgroundColor: Colors.white,
                            isScrollControlled: true,
                            builder: (context) {
                              return Container(
                                  height: 254.h,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Center(
                                          child: Container(
                                            height: 3.h,
                                            width: 38.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(24.r),
                                                color: CustomColor.kgrey300),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16.h,
                                        ),
                                        Center(
                                          child: "Logout".h4(
                                              color: CustomColor.kalertpink,
                                              fontWeight: CustomFontWeight
                                                  .kBoldFontWeight),
                                        ),
                                        SizedBox(
                                          height: 18.h,
                                        ),
                                        Center(
                                          child: SizedBox(
                                            width: 380.w,
                                            child: Divider(
                                              color: CustomColor.kgrey200,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 18.h,
                                        ),
                                        Center(
                                          child:
                                              "Are you sure you want to log out?"
                                                  .h5(
                                                      color:
                                                          CustomColor.kgrey900,
                                                      fontWeight:
                                                          CustomFontWeight
                                                              .kBoldFontWeight),
                                        ),
                                        SizedBox(
                                          height: 24.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            RowOutlineButton(
                                              title: 'Cancel',
                                              onPressed: () {
                                                 Navigator.pop(context);
                                              },
                                            ),
                                            SizedBox(width: 12.w),
                                            RowElevatedButton(
                                              title: 'Yes, Logout ',
                                              onPressed: () {
                                                Get.offAll(() => LetYouIn());
                                              },
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 24.h,
                                        ),
                                      ]));
                            });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 24.w, right: 24.w, bottom: 21.5.h),
                        child: Row(
                          children: [
                            Icon(
                              IconlyLight.logout,
                              size: 24.sp,
                              color: CustomColor.kalertpink,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            "Logout".xl(
                                color: CustomColor.kalertpink,
                                fontWeight:
                                    CustomFontWeight.kSemiBoldFontWeight),
                            Spacer(),
                            SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
