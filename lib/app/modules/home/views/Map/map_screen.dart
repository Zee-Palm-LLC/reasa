import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/enable_location.dart';
import 'package:reasa/app/modules/home/Widgets/resident_row_container.dart';

class MapScreen extends StatefulWidget {
  MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool onlocation = false;

  @override
  void initState() {
    setState(() {
      showEnableLoadingDialog(() {
        dismissLoadingDialog();
      }, () {
        dismissLoadingDialog();
      }, "");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(CustomAssets.backmap), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Container(
                height: 98.h,
                width: 380.w,
                decoration: BoxDecoration(
                  boxShadow: boxshadow,
                  color: CustomColor.kbackgroundwhite,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  IconlyBold.location,
                                  size: 18.sp,
                                  color: CustomColor.kprimaryblue,
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                "Location (within 10 km)".medium(
                                    color: CustomColor.kgrey900,
                                    fontWeight:
                                        CustomFontWeight.kMediumFontWeight),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            "New York, United States".large(
                                color: CustomColor.kgrey900,
                                fontWeight: CustomFontWeight.kBoldFontWeight),
                          ],
                        ),
                        Spacer(),
                        Container(
                            height: 32.h,
                            width: 103.w,
                            decoration: BoxDecoration(
                              color: CustomColor.kprimaryblue,
                              borderRadius: BorderRadius.circular(100.r),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  IconlyBold.edit,
                                  size: 14.sp,
                                  color: CustomColor.kbackgroundwhite,
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                "Change".medium(
                                  color: CustomColor.kbackgroundwhite,
                                  fontWeight:
                                      CustomFontWeight.kSemiBoldFontWeight,
                                ),
                              ],
                            ))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 85.h,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  onlocation = !onlocation;
                });
              },
              child: Image.asset(
                onlocation?CustomAssets.maplocationred :CustomAssets.mapcomponets,
                height: 371.h,
                width: 349.w,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            onlocation
                ? RowResidentContainer(
                    resident: modernicafull, onPressed: () {  }, onfavouritepressed: false,
                  )
                : SizedBox(),
          ]),
        ),
      ),
    );
  }
}
