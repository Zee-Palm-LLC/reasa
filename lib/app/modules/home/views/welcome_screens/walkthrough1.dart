import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reasa/app/modules/home/views/Auth/let_you_in.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class WalkThrough extends StatefulWidget {
  WalkThrough({super.key});

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  PageController controller = PageController();

  double currentPage = 0;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(controller: controller, children: [
      PageViewWidget(
        controller: controller,
        text: 'Thousands of the\nbest real estate\nat affordable prices',
        image: CustomAssets.welcome1,
        onPressed: () {
          
           controller.animateToPage(1,
                  duration: Duration(microseconds: 500),
                  curve: Curves.bounceOut);
        },
        buttontext: 'Next',
      ),
      PageViewWidget(
        controller: controller,
        text: 'Book a real estate\nquickly and easily\nwith one click',
        image: CustomAssets.welcome2,
        onPressed: () {
           controller.animateToPage(2,
                  duration: Duration(microseconds: 500),
                  curve: Curves.bounceOut);
        },
        buttontext: 'Next',
      ),
      PageViewWidget(
        controller: controller,
        text: 'Let\'s find the real\nestate that suits you\nright now!',
        image: CustomAssets.welcome3,
        onPressed: () {
          Get.to(() => LetYouIn());
        },
        buttontext: 'Get Started',
      ),
    ]);
  }
}

class PageViewWidget extends StatelessWidget {
  final String image;
  final String text;
  final String buttontext;
  final VoidCallback onPressed;
  const PageViewWidget({
    Key? key,
    required this.image,
    required this.text,
    required this.buttontext,
    required this.onPressed,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 31.h,
          ),
          Center(
            child: Image.asset(
              image,
              height: 478.h,
              width: 371.w,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 42.h,
          ),
          text.h2(
            color: CustomColor.kprimaryblue,
            fontWeight: CustomFontWeight.kBoldFontWeight,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 36.h,
          ),
          Container(
            child: SmoothPageIndicator(
              onDotClicked: (index) => controller.animateToPage(index,
                  duration: Duration(microseconds: 500),
                  curve: Curves.bounceOut),
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: CustomColor.kgrey200,
                  activeDotColor: CustomColor.kprimaryblue),
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          SizedBox(
            height: 58.h,
            width: 380.w,
            child: ElevatedButton(
                onPressed: onPressed,
                child: buttontext.large(
                  color: CustomColor.kbackgroundwhite,
                  fontWeight: CustomFontWeight.kBoldFontWeight,
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kBigRadius))),
                )),
          ),
        ],
      ),
    );
  }
}
