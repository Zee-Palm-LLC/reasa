import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/custom_text_feild.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/sms_or_email_cont.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/otp/opt_screen.dart';
import 'package:reasa/app/modules/home/views/Auth/profile_form.dart';

class ForgetPasswordMethod extends StatefulWidget {
  ForgetPasswordMethod({super.key});

  @override
  State<ForgetPasswordMethod> createState() => _ForgetPasswordMethodState();
}

class _ForgetPasswordMethodState extends State<ForgetPasswordMethod> {

  bool select = true;
  bool unselect = false;

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Forget Password',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 36.h,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      CustomAssets.forgetpassmet,
                      height: 276.h,
                      width: 250.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: "Select which contact details should we use to \nreset your password"
                      .xl(
                          color: CustomColor.kgrey900,
                          fontWeight: CustomFontWeight.kMediumFontWeight),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.w),
                  child: SMSAndEmalCont(
                    svg: CustomAssets.formes,
                    titletext: "via SMS:",
                    onPressed: () {
                      setState(() {
                        select = !select;
                        unselect = !unselect;
                      });
                    },
                    descripttext: '"+1 111 ******99"',
                    select: select,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.w),
                  child: SMSAndEmalCont(
                    svg: CustomAssets.foremail,
                    titletext: 'via Email:',
                    onPressed: () {
                      setState(() {
                        select = !select;
                         unselect = !unselect;
                      });
                    },
                    descripttext: 'and***ley@yourdomain.com',
                    select: unselect,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Center(
                  child: SizedBox(
                    height: 58.h,
                    width: 376.w,
                    child: ElevatedButton(
                      style:  ButtonStyle(
      elevation: MaterialStateProperty.all(1),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBigRadius)))),
                      onPressed: () {
                        Get.to(() => OTPCodeScreen());
                      },
                      child: "Continue".large(
                          color: CustomColor.kbackgroundwhite,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                    ),
                  ),
                ),
              ],
            )));
  }
}
