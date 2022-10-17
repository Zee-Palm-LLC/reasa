import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/custom_text_feild.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/or_cont_row.dart';
import 'package:reasa/app/modules/home/Widgets/sign_in_up_button.dart';
import 'package:reasa/app/modules/home/Widgets/small_outline_button.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Auth/forget_password_method.dart';
import 'package:reasa/app/modules/home/views/Auth/sign_up_screen.dart';
import 'package:reasa/app/modules/home/views/Auth/profile_form.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool ischeck = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: '',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 41.h,
                    ),
                    child: Image.asset(
                      CustomAssets.accountpng,
                      height: 120.h,
                      width: 120.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                  "Login to Your Account".h3(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                  SizedBox(
                    height: 32.6.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                    ),
                    child: CustomTextField(
                      controller: emailController,
                      textInputType: TextInputType.visiblePassword,
                      hintText: "Email",
                      showHidePassIcon: false,
                      showCalenderIcon: false,
                      prefixicon: IconlyLight.message,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                    ),
                    child: CustomTextField(
                        controller: passwordController,
                        textInputType: TextInputType.visiblePassword,
                        hintText: "password",
                        showHidePassIcon: true,
                        showCalenderIcon: false,
                        prefixicon: IconlyLight.lock),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 4.h,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Checkbox(
                                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: CustomColor.kprimaryblue,
                                          width: 3.sp),
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
                            ),
                            // SizedBox(
                            //   width: 4.w,
                            // ),
                            "Remember me".medium(
                                color: CustomColor.kgrey900,
                                fontWeight:
                                    CustomFontWeight.kSemiBoldFontWeight),
                          ])),
                  SizedBox(
                    height: 58.h,
                    width: 380.w,
                    child: ElevatedButton(
                       style:  ButtonStyle(
      elevation: MaterialStateProperty.all(1),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBigRadius)))),
                      onPressed: () {
                        Get.to(() => ProfileForm());
                      },
                      child: "Sign in".large(
                          color: CustomColor.kbackgroundwhite,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => ForgetPasswordMethod());
                    },
                    child: "Forgot the password?".large(
                        color: CustomColor.kprimaryblue,
                        fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  OrContinueWithRow(),
                  SizedBox(
                    height: 32.6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomSmallOutlineButton(
                        image: CustomAssets.facebookpng,
                        onpressed: () {},
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomSmallOutlineButton(
                        image: CustomAssets.googlepng,
                        onpressed: () {},
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomSmallOutlineButton(
                        image: CustomAssets.applepng,
                        onpressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      "Don’t have an account?".medium(
                          color: CustomColor.kgrey500,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                      SizedBox(width: 8.w),
                      SignInUpButton(text: "Sign up", onPressed: () { 
               Get.to(() => SignUpScreen());
             },)
      //                 TextButton(
      //                     style: TextButton.styleFrom(
      // padding: EdgeInsets.zero,
      // minimumSize: Size(50, 30),
      // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      // alignment: Alignment.centerLeft),
      //                     onPressed: () {
      //                       Get.to(() => SignUpScreen());
      //                     },
      //                     child: "Sign up".medium(
      //                         color: CustomColor.kprimaryblue,
      //                         fontWeight: CustomFontWeight.kBoldFontWeight))
                    ],
                  )
                ],
              ),
            )));
  }
}
