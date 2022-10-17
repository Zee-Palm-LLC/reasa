import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/modules/home/Widgets/spin_indicator.dart';
import 'package:reasa/app/modules/home/views/welcome_screens/welcome_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    3.seconds.delay().then((value) => Get.off(() =>WelcomeScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 403.h,),
          Image.asset(CustomAssets.reasalogopng,
          height: 60.h,
          width: 208.w, 
          fit: BoxFit.contain
          ),
          SizedBox(height: 303.h,),
          SpinIndicator(),
          
        ]
      ),
    );
  }
}

