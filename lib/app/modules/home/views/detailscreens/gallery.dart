import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/show_menu_pop.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';

class GalleryScreen extends StatelessWidget {
   GalleryScreen({super.key});

  List<String> bedroom = [CustomAssets.bed1,CustomAssets.bed2,CustomAssets.bed3,CustomAssets.lagrand];
   List<String> kitchen = [CustomAssets.kit1,CustomAssets.kit2,CustomAssets.kit3,CustomAssets.kitchen];
    List<String> living = [CustomAssets.living1,CustomAssets.living2,CustomAssets.living3,CustomAssets.alphahouse];
     List<String> bathroom = [CustomAssets.bath1,CustomAssets.bath2,CustomAssets.bath3,CustomAssets.bath];
     List<String>parking = [CustomAssets.newmodernica,CustomAssets.whitecottage,CustomAssets.alphahouse,CustomAssets.lagrand];

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [
                  IconButton(
                    icon: Icon(
                      IconlyLight.more_circle,
                      color: CustomColor.kgrey900,
                      size: 24.sp,
                    ),
                    onPressed: () {
                      ShowMenuPop(context);
                    },
                  )
                ],
                title: 'Gallery',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 24.w, top: 23.h, bottom: 19.h),
                    child: "Bedroom".h5(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                  GalleryListView(list: bedroom ,),
                   Padding(
                    padding:
                        EdgeInsets.only(left: 24.w, top: 23.h, bottom: 19.h),
                    child: "Bathroom".h5(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                   GalleryListView(list: bathroom ,),
                    Padding(
                    padding:
                        EdgeInsets.only(left: 24.w, top: 23.h, bottom: 19.h),
                    child: "Living Room".h5(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                  GalleryListView(list: living ,),
                   Padding(
                    padding:
                        EdgeInsets.only(left: 24.w, top: 23.h, bottom: 19.h),
                    child: "Kitchen".h5(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                  GalleryListView(list: kitchen,),
                   Padding(
                    padding:
                        EdgeInsets.only(left: 24.w, top: 23.h, bottom: 19.h),
                    child: "Parking".h5(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                  GalleryListView(list: parking ,),
                  SizedBox(height: 24.h
                  )




                ]))));
  }
}

class GalleryListView extends StatelessWidget {
  final List<String> list;
  const GalleryListView({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118.h,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 24.w,
        ),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 12.w);
        },
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 118.h,
            width: 118.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                image: AssetImage(list[index]),
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
