import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/chip_list.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/recommended_container.dart';
import 'package:reasa/app/modules/home/Widgets/resident_chip.dart';
import 'package:reasa/app/modules/home/Widgets/resident_row_container.dart';
import 'package:reasa/app/modules/home/Widgets/row_button.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/controllers/favourite_controller.dart';
import 'package:reasa/app/modules/home/views/search/search.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  FavouriteController favController = Get.put(FavouriteController());
  FavouriteController favouriteController = Get.find<FavouriteController>();
  bool isView = false;
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
                      IconlyLight.search,
                      size: 24.sp,
                      color: CustomColor.kgrey900,
                    ),
                    onPressed: () {
                      Get.to(() => SearchScreen());
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      IconlyLight.filter,
                      size: 24.sp,
                      color: CustomColor.kgrey900,
                    ),
                    onPressed: () {},
                  ),
                ],
                title: 'Favorites',
                leading: SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 6.w, bottom: 18.h, top: 18.h, right: 0),
                    child: Image.asset(
                      CustomAssets.accountpng,
                      height: 24.h,
                      width: 24.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            body: Obx(() => Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 22.w, top: 24.h, bottom: 24.h),
                        child: FacilitiesChip(
                          chiplist: residentchip,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Row(
                          children: [
                            "${favouriteController.favlist.value?.length ?? 0} found"
                                .h5(
                                    color: CustomColor.kgrey900,
                                    fontWeight:
                                        CustomFontWeight.kBoldFontWeight),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isView = !isView;
                                });
                              },
                              child: Icon(
                                IconlyBold.document,
                                size: 18.sp,
                                color: isView
                                    ? CustomColor.kprimaryblue
                                    : CustomColor.kgrey500,
                              ),
                            ),
                            SizedBox(
                              width: 14.5.w,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isView = !isView;
                                });
                              },
                              child: Icon(
                                IconlyLight.category,
                                size: 18.sp,
                                color: isView
                                    ? CustomColor.kgrey500
                                    : CustomColor.kprimaryblue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      isView
                          ? Expanded(
                              child: ListView.separated(
                                padding: EdgeInsets.all(24.h),
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(
                                    height: 34.h,
                                  );
                                },
                                itemCount:
                                    favouriteController.favlist.value?.length ??
                                        0,
                                itemBuilder: (BuildContext context, int index) {
                                  return RowResidentContainer(
                                    resident: favouriteController
                                        .favlist.value![index],
                                    onPressed: () {},
                                    onfavouritepressed: true,
                                  );
                                },
                              ),
                            )
                          : Expanded(
                              child: GridView.builder(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24.w, vertical: 24.h),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: 182.w / 276.h,
                                          crossAxisSpacing: 20.h,
                                          mainAxisSpacing: 20.h),
                                  itemCount: favouriteController
                                          .favlist.value?.length ??
                                      0,
                                  itemBuilder: (BuildContext ctx, index) {
                                    return RecommendedContainer(
                                      resident: favouriteController
                                          .favlist.value![index],
                                      isFavoruited: true,
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: context,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          18.r)),
                                            ),
                                            backgroundColor: Colors.white,
                                            isScrollControlled: true,
                                            builder: (context) {
                                              return Container(
                                                  height: 372.h,
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
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
                                                                    BorderRadius
                                                                        .circular(24
                                                                            .r),
                                                                color: CustomColor
                                                                    .kgrey300),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 16.h,
                                                        ),
                                                        Center(
                                                          child: "Remove from Favorites?".h4(
                                                              color: CustomColor
                                                                  .kgrey900,
                                                              fontWeight:
                                                                  CustomFontWeight
                                                                      .kBoldFontWeight),
                                                        ),
                                                        SizedBox(
                                                          height: 18.h,
                                                        ),
                                                        Center(
                                                          child: SizedBox(
                                                            width: 380.w,
                                                            child: Divider(
                                                              color: CustomColor
                                                                  .kgrey200,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 24.h,
                                                        ),
                                                        Center(
                                                          child:
                                                              RowResidentContainer(
                                                            resident:
                                                                favouriteresidents[
                                                                    index],
                                                            onPressed: () {},
                                                            onfavouritepressed:
                                                                true,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 24.h,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            RowOutlineButton(
                                                              title: 'Cancel',
                                                              onPressed: () {},
                                                            ),
                                                            SizedBox(
                                                                width: 12.w),
                                                            RowElevatedButton(
                                                              title:
                                                                  'Yes, Remove',
                                                              onPressed: () {
                                                                favouriteController
                                                                    .favlist
                                                                    .value!
                                                                    .removeAt(
                                                                        index);
                                                                favouriteController
                                                                    .update();

                                                                Get.back();
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 24.h,
                                                        ),
                                                      ]));
                                            });
                                      },
                                      onFavouritePressed: () {},
                                    );
                                  }),
                            ),
                    ]))));
  }
}
