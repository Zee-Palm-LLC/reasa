import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/Model/chatmodel.dart';
import 'package:reasa/app/modules/home/views/Chat/chat_page.dart';
import 'package:reasa/app/modules/home/views/Chat/voice_call.dart';
import 'package:reasa/app/modules/home/views/booking/book_calender.dart';
import 'package:reasa/app/modules/home/views/booking/information_detil.dart';
import 'package:reasa/app/modules/home/views/detailscreens/gallery.dart';
import 'package:reasa/app/modules/home/views/detailscreens/review.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Resident resident;
  const DetailPage({
    Key? key,
    required this.resident,
  }) : super(key: key);
 //final Uri url = "tel:0311 2210823";   

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Scaffold(
        bottomSheet: SizedBox(
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 24.h, bottom: 24.h),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Price".xsmall(
                          color: CustomColor.kgrey700,
                          fontWeight: CustomFontWeight.kMediumFontWeight),
                      Spacer(),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          "\$${resident.prize}".h3(
                            color: CustomColor.kprimaryblue,
                            fontWeight: CustomFontWeight.kBoldFontWeight,
                          ),
                          " / night".small(
                            color: CustomColor.kgrey700,
                            fontWeight: CustomFontWeight.kMediumFontWeight,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    height: 58.h,
                    width: 259.w,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => BookCalenderScreen());
                        },
                        child: "Booking Now".large(
                            color: CustomColor.kbackgroundwhite,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(kBigRadius))),
                        )),
                  ),
                ],
              ),
            )),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GetBackIcon(),
          actions: [
            Icon(
              IconlyLight.heart,
              color: CustomColor.kgrey900,
              size: 24.sp,
            ),
            SizedBox(
              width: 23.27.w,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18.r)),
                    ),
                    backgroundColor: Colors.white,
                    isScrollControlled: true,
                    builder: (context) {
                      return FractionallySizedBox(
                        heightFactor: 0.4,
                        child: Container(
                          height: 336.h,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8.h,
                                ),
                                Center(
                                  child: Container(
                                    height: 3.h,
                                    width: 38.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(24.r),
                                        color: CustomColor.kgrey300),
                                  ),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Center(
                                  child: "Share".h4(
                                      color: CustomColor.kgrey900,
                                      fontWeight:
                                          CustomFontWeight.kBoldFontWeight),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Center(
                                  child: SizedBox(
                                      width: 380.w,
                                      child: Divider(
                                        color: CustomColor.kgrey200,
                                      )),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ShareCont(
                                      title: 'WhatsApp',
                                      image: CustomAssets.whatsapp,
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    ShareCont(
                                      title: 'Twitter',
                                      image: CustomAssets.twitterpng,
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    ShareCont(
                                      title: 'Facebook',
                                      image: CustomAssets.fbpng,
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    ShareCont(
                                      title: 'Instagram',
                                      image: CustomAssets.insta,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ShareCont(
                                      title: 'Yahoo',
                                      image: CustomAssets.yahoopng,
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    ShareCont(
                                      title: 'Tiktok',
                                      image: CustomAssets.tiktok,
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    ShareCont(
                                      title: 'Chat',
                                      image: CustomAssets.chat,
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 8.h,
                                    ),
                                    ShareCont(
                                      title: 'WeChat',
                                      image: CustomAssets.wechat,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      );
                    });
              },
              child: Icon(
                IconlyLight.send,
                color: CustomColor.kgrey900,
                size: 24.sp,
              ),
            ),
            SizedBox(
              width: 13.35.w,
            ),
          ],
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 460.h,
            width: 428.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(CustomAssets.newmodernica),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 436.h,
                ),
                Container(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 4,
                    effect: ExpandingDotsEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: CustomColor.kgrey200,
                        activeDotColor: CustomColor.kprimaryblue),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.h, left: 24.w),
            child: "Modernica Apartment".h3(
                color: CustomColor.kgrey900,
                fontWeight: CustomFontWeight.kBoldFontWeight),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 24.w),
            child: Row(
              children: [
                Container(
                  height: 24.h,
                  width: 72.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: CustomColor.kprimaryblue100,
                  ),
                  child: Center(
                    child: "Apartment".xsmall(
                        color: CustomColor.kprimaryblue,
                        fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  IconlyBold.star,
                  color: CustomColor.kgradientorange,
                  size: 12.sp,
                ),
                SizedBox(width: 6.w),
                "${resident.rating} (1,275 reviews)".large(
                    color: CustomColor.kgrey800,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 24.w),
            child: Row(
              children: [
                Image.asset(
                  CustomAssets.beds,
                  height: 40.h,
                  width: 40.w,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 8.w,
                ),
                "8 beds".medium(
                    color: CustomColor.kgrey800,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                SizedBox(
                  width: 24.w,
                ),
                Image.asset(
                  CustomAssets.bath,
                  height: 40.h,
                  width: 40.w,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 8.w,
                ),
                "3 bath".medium(
                    color: CustomColor.kgrey800,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                SizedBox(
                  width: 24.w,
                ),
                Image.asset(
                  CustomAssets.area,
                  height: 40.h,
                  width: 40.w,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 8.w,
                ),
                "2000 sqft".medium(
                    color: CustomColor.kgrey800,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                SizedBox(
                  width: 24.w,
                )
              ],
            ),
          ),
          Center(
            child: SizedBox(
              width: 380.w,
              child: Divider(
                color: CustomColor.kgrey200,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 24.h, left: 24.w, right: 24.w, bottom: 24.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24.r,
                  backgroundImage: AssetImage(CustomAssets.natprofile),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Natasya Wilodra".h6(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                    SizedBox(
                      height: 4.h,
                    ),
                    "Owner".medium(
                        color: CustomColor.kgrey700,
                        fontWeight: CustomFontWeight.kMediumFontWeight),
                  ],
                ),
                Spacer(),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () {
                      Get.to(()=> ChatPage(message: message1 ));
                    },
                    icon: Icon(
                      IconlyLight.chat,
                      color: CustomColor.kprimaryblue,
                      size: 24.sp,
                    )),
                SizedBox(
                  width: 13.92.w,
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: (){
                       Get.to(()=> VoiceCallScreen());
                    },
                    icon: Icon(
                      IconlyLight.call,
                      color: CustomColor.kprimaryblue,
                      size: 24.sp,
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 12.h),
            child: "Overview".h5(
                color: CustomColor.kgrey900,
                fontWeight: CustomFontWeight.kBoldFontWeight),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut"
                    .large(
                        color: CustomColor.kgrey800,
                        fontWeight: CustomFontWeight.kMediumFontWeight),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.w,
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(50, 16),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.topLeft),
              onPressed: () {},
              child: "Read More".large(
                  color: CustomColor.kprimaryblue,
                  fontWeight: CustomFontWeight.kMediumFontWeight),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 24.h, bottom: 20.h),
            child: "Facilities".h5(
                color: CustomColor.kgrey900,
                fontWeight: CustomFontWeight.kBoldFontWeight),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FacilitiesCont(title: 'Car Parking', image: CustomAssets.carparking),
              SizedBox(
                width: 8.h,
              ),
              FacilitiesCont(title: 'Swiming', image: CustomAssets.swiming),
              SizedBox(
                width: 8.h,
              ),
              FacilitiesCont(title: 'Gym & fitness', image: CustomAssets.gym),
              SizedBox(
                width: 8.h,
              ),
              FacilitiesCont(title: 'Resturent', image: CustomAssets.kitchen),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FacilitiesCont(title: 'WiFi & Net..', image: CustomAssets.wifi,),
              SizedBox(
                width: 8.h,
              ),
              FacilitiesCont(title: 'Pet Center', image: CustomAssets.petcenter),
              SizedBox(
                width: 8.h,
              ),
              FacilitiesCont(title: 'Sport Center', image: CustomAssets.sportcenter),
              SizedBox(
                width: 8.h,
              ),
              FacilitiesCont(title: 'Laundary', image: CustomAssets.laundary,),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(24.h),
            child: Row(
              children: [
                "Gallery".h5(
                    color: CustomColor.kgrey900,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(50, 16),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.bottomRight),
                  onPressed: () {
                    Get.to(() => GalleryScreen());
                  },
                  child: "See All".large(
                      color: CustomColor.kprimaryblue,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 118.h,
                width: 118.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage(CustomAssets.newmodernica),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 13.h,
              ),
              Container(
                height: 118.h,
                width: 118.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage(CustomAssets.carraigehouse),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 13.h,
              ),
              Container(
                height: 118.h,
                width: 118.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage(CustomAssets.millhouse),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: CustomColor.kblack.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: "20+".h5(
                        color: CustomColor.kbackgroundwhite,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 24.h, bottom: 20.h),
            child: "Location".h5(
                color: CustomColor.kgrey900,
                fontWeight: CustomFontWeight.kBoldFontWeight),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 20.h),
            child: Row(
              children: [
                Icon(
                  IconlyBold.location,
                  color: CustomColor.kprimaryblue,
                  size: 22.sp,
                ),
                SizedBox(width: 8.w),
                "Grand City St. 100, ${resident.city} , ${resident.countrytag} "
                    .medium(
                        color: CustomColor.kgrey700,
                        fontWeight: CustomFontWeight.kMediumFontWeight),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 24.w,
            ),
            height: 200.h,
            width: 380.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                image: AssetImage(CustomAssets.maoplocation),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
                child: Image.asset(
              CustomAssets.maplocation,
              height: 61.45.h,
              width: 52.04.w,
              fit: BoxFit.contain,
            )),
          ),
          Padding(
            padding: EdgeInsets.all(24.h),
            child: Row(children: [
              Icon(
                IconlyBold.star,
                color: CustomColor.kgradientorange,
                size: 24.sp,
              ),
              SizedBox(width: 12.w),
              "${resident.rating} (1,275 reviews)".h5(
                  color: CustomColor.kgrey800,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
              Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(50, 16),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerRight),
                onPressed: () {
                  Get.to(() => ReviewScreen());
                },
                child: "See All".large(
                    color: CustomColor.kprimaryblue,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 24.h, left: 24.w, right: 24.w, bottom: 12.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 19.r,
                  backgroundImage: AssetImage(CustomAssets.charalett),
                ),
                SizedBox(
                  width: 16.w,
                ),
                "Charolette Hanlin".large(
                    color: CustomColor.kgrey900,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                Spacer(),
                Container(
                  height: 32.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: CustomColor.kprimaryblue),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        IconlyBold.star,
                        color: CustomColor.kprimaryblue,
                        size: 14.sp,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      "5".medium(
                          color: CustomColor.kprimaryblue,
                          fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () {},
                    icon: Icon(
                      IconlyLight.more_circle,
                      color: CustomColor.kgrey900,
                      size: 24.sp,
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12.h,
              horizontal: 24.h,
            ),
            child:
                "The apartment is very nice, clean and modern. I really like the interior design. Looks like I'll feel at home 😍😍"
                    .medium(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kRegularWeight),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h, bottom: 24.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  IconlyLight.heart,
                  color: CustomColor.kprimaryblue,
                  size: 24.sp,
                ),
                SizedBox(
                  width: 10.5.w,
                ),
                "938".small(
                    color: CustomColor.kgrey900,
                    fontWeight: CustomFontWeight.kMediumFontWeight),
                SizedBox(
                  width: 24.w,
                ),
                "6 days ago".small(
                  color: CustomColor.kgrey700,
                  fontWeight: CustomFontWeight.kMediumFontWeight,
                ),
              ],
            ),
          ),
          Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12.h,
            horizontal: 24.h,
          ),
          child:
              "The apartment is very nice, clean and modern. I really like the interior design. Looks like I'll feel at home 😍😍"
                  .medium(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kRegularWeight),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                IconlyLight.heart,
                color: CustomColor.kprimaryblue,
                size: 24.sp,
              ),
              SizedBox(
                width: 10.5.w,
              ),
              "938".toString().small(
                  color: CustomColor.kgrey900,
                  fontWeight: CustomFontWeight.kMediumFontWeight),
              SizedBox(
                width: 24.w,
              ),
              "6 days ago".small(
                color: CustomColor.kgrey700,
                fontWeight: CustomFontWeight.kMediumFontWeight,
              ),
            ],
          ),
        ),
        ])));
  }
}

class FacilitiesCont extends StatelessWidget {
  final String image;
  final String title;
  const FacilitiesCont({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 88.h,
        width: 89.w,
        child: Column(children: [
          Image.asset(
            image,
            height: 60.h,
            width: 60.w,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 8.h),
          title.medium(
              color: CustomColor.kblack,
              fontWeight: CustomFontWeight.kSemiBoldFontWeight),
        ]));
  }
}

class ShareCont extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onPressed;
  const ShareCont({
    Key? key,
    required this.image,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 88.h,
        width: 89.w,
        child: Column(children: [
          InkWell(
            onTap: onPressed,
            child: Image.asset(
              image,
              height: 60.h,
              width: 60.w,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 8.h),
          title.small(
              color: CustomColor.kblack,
              fontWeight: CustomFontWeight.kMediumFontWeight),
        ]));
  }
}
