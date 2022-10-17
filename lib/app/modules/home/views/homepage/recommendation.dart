import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';


import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/chip_list.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/recommended_container.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';

import '../../Widgets/resident_chip.dart';

class OurRecommendation extends StatelessWidget {
  const OurRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(48.h),
              child: CustomAppBar(
                action: [
                  Icon(
                    IconlyLight.search,
                    size: 24.sp,
                    color: CustomColor.kgrey900,
                  ),
                  SizedBox(
                    width: 26.87.w,
                  ),
                ],
                title: 'Our Recommendation',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 24.h),
                  child: FacilitiesChip(
                    chiplist: residentchip,
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 24.h),
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
                          },
                          onFavouritePressed: () {},
                          isFavoruited: false,
                        );
                      }),
                ),
              ],
            )));
  }
}
