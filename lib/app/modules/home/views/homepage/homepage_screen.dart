import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/chip_list.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/recommended_container.dart';
import 'package:reasa/app/modules/home/Widgets/resident_chip.dart';
import 'package:reasa/app/modules/home/Widgets/resident_container.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/controllers/favourite_controller.dart';
import 'package:reasa/app/modules/home/views/detailscreens/detailspage.dart';
import 'package:reasa/app/modules/home/views/homepage/recommendation.dart';
import 'package:reasa/app/modules/home/views/notification/notification_Screen.dart';
import 'package:reasa/app/modules/home/views/search/search.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(children: [
              CircleAvatar(
                radius: 24.0,
                backgroundImage: AssetImage(CustomAssets.profilepic),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                width: 16.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Good Morning 👋".large(
                      color: CustomColor.kgrey600,
                      fontWeight: CustomFontWeight.kRegularWeight),
                  SizedBox(
                    height: 6.h,
                  ),
                  "Andrew Ainsley".h5(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Get.to(() => NotificationScreen());
                },
                child: Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: CustomColor.kgrey200),
                  ),
                  child: Stack(
                    children: [
                      Center(
                          child: SizedBox(
                              height: 24.h,
                              width: 24.w,
                              child: Icon(
                                IconlyLight.notification,
                                size: 24.sp,
                                color: CustomColor.kgrey900,
                              ))),
                      // Align(
                      //   alignment: Alignment.topRight,
                      //   child: CircleAvatar(
                      //     radius: 3.r,
                      //     backgroundColor: CustomColor.kblack,
                      //   ),
                      // ) asked
                    ],
                  ),
                ),
              )
            ]),
          ),
          SizedBox(
            height: 24.h,
          ),
          InkWell(
            onTap: () {
              Get.to(() => SearchScreen());
            },
            child: Container(
              height: 56.h,
              //width: 380.w,
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              decoration: BoxDecoration(
                color: CustomColor.kgrey100,
                borderRadius: BorderRadius.circular(kContRadius),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 22.w, right: 18.w),
                child: Row(
                  children: [
                    Icon(
                      IconlyLight.search,
                      color: CustomColor.kgrey400,
                      size: 18.sp,
                    ),
                    SizedBox(
                      width: 14.7.w,
                    ),
                    "Search".medium(
                        color: CustomColor.kgrey400,
                        fontWeight: CustomFontWeight.kRegularWeight),
                    Spacer(),
                    Icon(
                      IconlyLight.filter,
                      size: 18.sp,
                      color: CustomColor.kprimaryblue,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 24.h,
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                "Featured".h5(
                    color: CustomColor.kgrey900,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: "See All".large(
                      color: CustomColor.kprimaryblue,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 24.h,
          // ),
          SizedBox(
              height: 400.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 20.w,
                  );
                },
                itemCount: featuredresidents.length,
                itemBuilder: (BuildContext context, int index) {
                  return FeaturedResidentContainer(
                    resident: featuredresidents[index],
                    onPressed: () {
                      Get.to(() => DetailPage(
                            resident: featuredresidents[index],
                          ));
                    },
                    onFavouritePressed: () {},
                  );
                },
              )),
          // SizedBox(
          //   height: 24.h,
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                "Our Recommendation".h5(
                    color: CustomColor.kgrey900,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Get.to(() => OurRecommendation());
                  },
                  child: "See All".large(
                      color: CustomColor.kprimaryblue,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: FacilitiesChip(
              chiplist: residentchip,
            ),
          ),
          GetBuilder<FavouriteController>(
            init: FavouriteController(),
            builder: (favController) {
              return SizedBox(
                height: 1170.h,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 182.w / 274.h,
                        crossAxisSpacing: 16.h,
                        mainAxisSpacing: 16.h),
                    itemCount: recommendedresidents.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return RecommendedContainer(
                          resident: recommendedresidents[index],
                          onPressed: () {
                            Get.to(() => DetailPage(
                                  resident: recommendedresidents[index],
                                ));
                          },
                          onFavouritePressed: () {
                            favController
                                .favouritepressed(recommendedresidents[index]);
                            favController.update();
                          },
                          isFavoruited: favController.favlist.value
                                  ?.contains(recommendedresidents[index]) ??
                              false);
                    }),
              );
            },
          )
        ]),
      )),
    ));
  }
}
