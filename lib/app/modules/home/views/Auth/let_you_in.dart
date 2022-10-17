import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/custom_outline_button.dart';
import 'package:reasa/app/modules/home/Widgets/sign_in_up_button.dart';
import 'package:reasa/app/modules/home/views/Auth/sign_in.dart';
import 'package:reasa/app/modules/home/views/Auth/sign_up_screen.dart';

class LetYouIn extends StatelessWidget {
  const LetYouIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48.h),
        child: CustomAppBar(
          action: [],
          title: '',
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: CustomColor.kgrey900,
              )),
        ),
      ),
      body: Column(children: [
        SizedBox(height: 32.25.h),
        Image.asset(
          CustomAssets.letyouinpng,
          height: 200.h,
          width: 237.w,
          fit: BoxFit.contain,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 32.25.h),
          child: "Let's you in".h1(
              color: CustomColor.kgrey900,
              fontWeight: CustomFontWeight.kBoldFontWeight),
        ),
        CustomOutlineButton(
          title: 'Continue with Facebook',
          image: CustomAssets.facebookpng,
          onpressed: () {},
        ),
        SizedBox(height: 16.h),
        CustomOutlineButton(
          title: 'Continue with Google',
          image: CustomAssets.googlepng,
          onpressed: () {},
        ),
        SizedBox(height: 16.h),
        CustomOutlineButton(
          title: 'Continue with Apple',
          image: CustomAssets.applepng,
          onpressed: () {},
        ),
        SizedBox(height: 24.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 155.5.w,
              child: Divider(
                color: CustomColor.kgrey200,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: "OR".xl(
                  color: CustomColor.kgrey700,
                  fontWeight: CustomFontWeight.kSemiBoldFontWeight),
            ),
            SizedBox(
                width: 155.5.w,
                child: Divider(
                  color: CustomColor.kgrey200,
                )),
          ],
        ),
        SizedBox(
          height: 24.5.h,
        ),
        SizedBox(
          height: 58.h,
          width: 380.w,
          child: ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(1),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kBigRadius)))),
            onPressed: () {
              Get.to(() => SignIn());
            },
            child: "Sign in with password".large(
                color: CustomColor.kbackgroundwhite,
                fontWeight: CustomFontWeight.kBoldFontWeight),
          ),
        ),
        SizedBox(height: 32.25.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            "Don’t have an account?".medium(
                color: CustomColor.kgrey500,
                fontWeight: CustomFontWeight.kBoldFontWeight),
            SizedBox(width: 7.w),
            SignInUpButton(text: 'Sign up', onPressed: () { 
              Get.to(() => SignUpScreen());
             },)
          ],
        )
      ]),
    );
  }
}

