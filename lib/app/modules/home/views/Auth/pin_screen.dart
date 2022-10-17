import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/selfy_and_face_screen/set_fingerprint.dart';

class CreatePinScreen extends StatefulWidget {
  CreatePinScreen({super.key});

  @override
  State<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends State<CreatePinScreen> {
  @override
  Widget build(BuildContext context) {
    var pinController = TextEditingController(); //Pin Controller
    String currentText = "";
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(48.h),
              child: CustomAppBar(
                action: [],
                title: 'Create New PIN',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 115.5.h,
                  ),
                  //Phone Number Here
                  "Add a PIN number to make your account\nmore secure.".xl(
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
                    height: 60.h,
                  ),

                  Center(
                    child: SizedBox(
                      height: 58.h,
                      width: 360.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => SetFingerPrint());
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
