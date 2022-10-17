import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/congratulation_dialog.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/custom_text_feild.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/controllers/favourite_controller.dart';
import 'package:reasa/app/modules/home/views/homepage/bottom_nav_bar.dart';
import 'package:reasa/app/modules/home/views/homepage/homepage_screen.dart';
import 'package:reasa/app/modules/home/views/Auth/profile_form.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool ischeck = false;
   FavouriteController favouriteController = Get.put(FavouriteController());


  @override
  Widget build(BuildContext context) {
    var firstpassword = TextEditingController();
    var secondpassword = TextEditingController();
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Create New Password',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 73.67.h,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        CustomAssets.newpasslogo,
                        height: 250.h,
                        width: 329.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: "Create Your New Password".xl(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kMediumFontWeight),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                    ),
                    child: CustomTextField(
                      controller: firstpassword,
                      textInputType: TextInputType.visiblePassword,
                      hintText: "Enter Your Password",
                      showHidePassIcon: true,
                      showCalenderIcon: false,
                      prefixicon: Icons.lock,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                    ),
                    child: CustomTextField(
                      controller: secondpassword,
                      textInputType: TextInputType.visiblePassword,
                      hintText: "Re Enter Your Password",
                      showHidePassIcon: true,
                      showCalenderIcon: false,
                      prefixicon: Icons.lock,
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: CustomColor.kprimaryblue, width: 3.sp),
                            borderRadius:
                                BorderRadius.circular(kcheckboxradius)),
                        fillColor: MaterialStateProperty.all<Color>(
                          CustomColor.kprimaryblue,
                        ),
                        value: ischeck,
                        onChanged: (bool? value) {
                          setState(() {
                            ischeck = value!;
                          });
                        }),
                    // SizedBox(
                    //   width: 12.w,
                    // ),
                    "Remember me".medium(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                  ]),
                  SizedBox(
                    height: 45.67.h,
                  ),
                  Center(
                    child: SizedBox(
                      height: 58.h,
                      width: 380.w,
                      child: ElevatedButton(
                        style:  ButtonStyle(
      elevation: MaterialStateProperty.all(1),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBigRadius)))),
                        onPressed: () {
                         showLoadingDialog();
                 Timer(Duration(seconds: 3), () {
dismissLoadingDialog();
Get.offAll(() => NavigationBarScreen());
});
                        },
                        child: "Continue".large(
                            color: CustomColor.kbackgroundwhite,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
