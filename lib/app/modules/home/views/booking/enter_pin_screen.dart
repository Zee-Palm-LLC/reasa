import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/congrats_transatioc_dialog.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/booking/erecipt.dart';
import 'package:reasa/app/modules/home/views/selfy_and_face_screen/set_fingerprint.dart';

class EnterPinScreen extends StatefulWidget {
  EnterPinScreen({super.key});

  @override
  State<EnterPinScreen> createState() => _EnterPinScreenState();
}

class _EnterPinScreenState extends State<EnterPinScreen> {
  @override
  Widget build(BuildContext context) {
    var pinController = TextEditingController(); //Pin Controller
    String currentText = "";
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Enter Your Pin',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 137.5.h,
                  ),
                  //Phone Number Here
                  "Enter your PIN to confirm payment".xl(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kRegularWeight,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 80.h,
                  ),
                  //pintextfeild
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: PinCodeTextField(
                      textStyle: CustomTextStyle.kheading4.copyWith(
                          color: CustomColor.kgrey900,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                      obscuringWidget: Image.asset(
                        CustomAssets.pinpng,
                        height: 29.h,
                        width: 24.w,
                        fit: BoxFit.contain,
                      ),
                      length: 4,
                      obscureText: true,
                      //animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(kContRadius),
                        fieldHeight: 61,
                        fieldWidth: 83,
                        activeFillColor: CustomColor.kgrey50, //
                        inactiveFillColor: CustomColor.kgrey50,
                        selectedColor: CustomColor.kprimaryblue,
                        activeColor: CustomColor.kgrey50,
                        disabledColor: CustomColor.kgrey50,
                        selectedFillColor:
                            CustomColor.kprimaryblue.withOpacity(0.1),
                        inactiveColor: CustomColor.kgrey50,
                      ),

                      animationDuration: Duration(milliseconds: 300),
                      enableActiveFill: true,
                      //errorAnimationController: errorController,
                      controller: pinController,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                      appContext: context,
                    ),
                  ),

                  SizedBox(
                    height: 128.h,
                  ),

                  Center(
                    child: SizedBox(
                      height: 58.h,
                      width: 360.w,
                      child: ElevatedButton(
                        onPressed: () {
                          showCongratsLoadingDialog(() {
                             Get.back();
                           
                          }, () {
                            Get.to(() => EreciptScreen());
                          }, "Modernica Apartment");
                        },
                        child: "Continue".large(
                            color: CustomColor.kbackgroundwhite,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(kBigRadius)))),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
