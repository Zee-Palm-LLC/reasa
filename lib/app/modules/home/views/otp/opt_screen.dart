import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Auth/forget_password_screen.dart';
import 'package:reasa/app/modules/home/views/Auth/pin_screen.dart';



class OTPCodeScreen extends StatefulWidget {
  OTPCodeScreen({super.key});

  @override
  State<OTPCodeScreen> createState() => _OTPCodeScreenState();
}

class _OTPCodeScreenState extends State<OTPCodeScreen> {
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
                title: 'OTP Code Verification',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
            flex: 1,
            child: ListView(children: [
              SizedBox(height: 210.h,),
            ],)
            ),
               //Phone Number Here
                "Code has been send to +1 111 ******99"
                    .xl(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kMediumFontWeight),
                SizedBox(
                  height: 60.h,
                ),
             //otp textfeild
                 Padding(
                   padding: EdgeInsets.only(left: 17.w),
                   child: OtpTextField(
                   borderRadius: BorderRadius.circular(kContRadius),
                   fieldWidth: 83.w,
                   margin: EdgeInsets.only(right: 16.h),
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   fillColor: CustomColor.kgrey200,
                   textStyle:  CustomTextStyle.kheading4.copyWith( color: CustomColor.kgrey900, fontWeight: CustomFontWeight.kBoldFontWeight),
                    enabledBorderColor: CustomColor.kgrey200,
                    disabledBorderColor: CustomColor.kgrey200,
                    borderColor : CustomColor.kgrey200,
                    focusedBorderColor: CustomColor.kprimaryblue ,

                    filled: true,
                    
                    numberOfFields: 4,

                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true, 
                    
                    onCodeChanged: (String code) {
            //handle validation or checks here           
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode){
            // showDialog(
            //     context: context,
            //     builder: (context){
            //     return AlertDialog(
            //         title: Text("Verification Code"),
            //         content: Text('Code entered is $verificationCode'),
            //     );
            //     }
            // );
                    }, // end onSubmit
              ),
                 ),
                SizedBox(
                  height: 60.h,
                ),
                Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Resend code in ',
                style: CustomTextStyle.kheading6.copyWith( color: CustomColor.kgrey900, fontWeight: CustomFontWeight.kMediumFontWeight),
                ),
                TextSpan(
                  text: '55',// For Timer
                  style: CustomTextStyle.kheading6.copyWith( color: CustomColor.kprimaryblue, fontWeight: CustomFontWeight.kMediumFontWeight),
                ),
                TextSpan(text: 's',
                style: CustomTextStyle.kheading6.copyWith( color: CustomColor.kgrey900, fontWeight: CustomFontWeight.kMediumFontWeight),
                ),
              ],
            ),
            ),
            Expanded(
            flex: 1,
            child: ListView(children: [
              SizedBox(height: 229.h,),
            ],)
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
                        Get.to(() => ForgetPassword());
                        
                      },
                      child: "Verify".large(
                          color: CustomColor.kbackgroundwhite,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                    ),
                  ),
                ),
                SizedBox(height: 45.h ),
              ],
            )));
  }
}
