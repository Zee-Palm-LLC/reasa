import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/views/Auth/let_you_in.dart';
import 'package:reasa/app/modules/home/views/welcome_screens/walkthrough1.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    3.seconds.delay().then((value) => Get.off(() =>WalkThrough()));
    super.initState();
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 73.h,
          ),
          Image.asset(
                      CustomAssets.welcomepng,
                      height: 429.36.h,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
           SizedBox(
            height: 101.64.h,
          ),
          Center(
            child: "Welcome to \nReasa! 👋".h1(
                color: CustomColor.kprimaryblue,
                fontWeight: CustomFontWeight.kBoldFontWeight),
          ),
              SizedBox(
            height: 32.h,
          ),
            "The best real estate application to complete\nyour life and family.".xl(
              color: CustomColor.kgrey900,
              fontWeight: CustomFontWeight.kMediumFontWeight,
              textAlign: TextAlign.center ), 

        ],
      ),
    );
  }
}
