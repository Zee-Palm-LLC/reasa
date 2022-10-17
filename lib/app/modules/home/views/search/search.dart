import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/notification_model.dart';
import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/chip_list.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/custom_drop.dart';
import 'package:reasa/app/modules/home/Widgets/custom_dropdown.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/notifications.dart';
import 'package:reasa/app/modules/home/Widgets/recommended_container.dart';
import 'package:reasa/app/modules/home/Widgets/resident_row_container.dart';
import 'package:reasa/app/modules/home/Widgets/row_button.dart';
import 'package:reasa/app/modules/home/Widgets/search_textfeild.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../Widgets/resident_chip.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isView = false;
  var serachController = TextEditingController();
  SfRangeValues values = SfRangeValues(40.0, 80.0);
  List<Resident> searchrecommendedresidents = [];
  List<String> loction = ['New York, United State', 'Londen, UK'];
  String selectedlocation = 'New York, United State';

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: SafeArea(
            child: Scaffold(
      body: Column(children: [
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 16.w),
              child: GetBackIcon(),
            ),
            SizedBox(
              height: 56.h,
              width: 336.w,
              child: SearchTextFeild(
                controller: serachController,
                textInputType: TextInputType.multiline,
                hintText: "Search",
                showHidePassIcon: false,
                showCalenderIcon: false,
                prefixicon: IconlyLight.search,
                onsuffexpresssed: () {
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(24.r)),
                      ),
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      builder: (context) {
                        return FractionallySizedBox(
                          heightFactor: 0.9,
                          child: Container(
                            height: 797.h,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.vertical(top: Radius.circular(24.r))
                            // ),
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
                                    child: "Filter".h4(
                                        color: CustomColor.kgrey900,
                                        fontWeight:
                                            CustomFontWeight.kBoldFontWeight),
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  SizedBox(
                                    width: 380.w,
                                    child: Divider(
                                      color: CustomColor.kgrey200,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 24.w),
                                    child: "Category".h6(
                                        color: CustomColor.kgrey900,
                                        fontWeight:
                                            CustomFontWeight.kBoldFontWeight),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.w, top: 24.h, bottom: 24.h),
                                    child: ReisidentChip(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.w, bottom: 24.h),
                                    child: "Price Range".h6(
                                        color: CustomColor.kgrey900,
                                        fontWeight:
                                            CustomFontWeight.kBoldFontWeight),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: SfRangeSliderTheme(
                                      data: SfRangeSliderThemeData(
                                        tooltipBackgroundColor:
                                            CustomColor.kprimaryblue,
                                        tooltipTextStyle: CustomTextStyle.ksmall
                                            .copyWith(
                                                color: CustomColor
                                                    .kbackgroundwhite,
                                                fontWeight: CustomFontWeight
                                                    .kSemiBoldFontWeight),
                                      ),
                                      child: SfRangeSlider(
                                        activeColor: CustomColor.kprimaryblue,
                                        inactiveColor: CustomColor.kgrey200,
                                        shouldAlwaysShowTooltip: true,
                                        min: 10.0,
                                        max: 100.0,
                                        values: values,
                                        interval: 20,
                                        showTicks: false,
                                        showLabels: false,
                                        enableTooltip: true,
                                        tooltipTextFormatterCallback:
                                            (dynamic actualValue,
                                                String formattedText) {
                                          return "\$${actualValue}";
                                        },
                                        tooltipShape:
                                            SfRectangularTooltipShape(),
                                        minorTicksPerInterval: 1,
                                        onChanged: (SfRangeValues values) {
                                          setState(() {
                                            values = values;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.w, bottom: 24.h),
                                    child: "Facilities".h6(
                                        color: CustomColor.kgrey900,
                                        fontWeight:
                                            CustomFontWeight.kBoldFontWeight),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 24.w,
                                    ),
                                    child: FacilitiesChip(
                                      chiplist: facilitieschip,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.w, bottom: 24.h, top: 24.h),
                                    child: "Location".h6(
                                        color: CustomColor.kgrey900,
                                        fontWeight:
                                            CustomFontWeight.kBoldFontWeight),
                                  ),
                                  Center(
                                    child: Container(
                                      height: 60.h,
                                      width: 380.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              kContRadius),
                                          color: CustomColor.kgrey50),
                                      child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.w),
                                          child: DropDownCustom(
                          value: selectedlocation,
                          OnChanged: (String? value) {
                            setState(() {
                              selectedlocation = value!;
                            });
                          },
                          items: loction.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(items,
                                    style: CustomTextStyle.kmedium.copyWith(
                                      color: CustomColor.kgrey900,
                                      fontWeight:
                                          CustomFontWeight.kSemiBoldFontWeight,
                                    )));
                          }).toList(),
                          hint: '',
                          hintenable: true,
                        ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.w, bottom: 24.h, top: 24.h),
                                    child: "Rating".h6(
                                        color: CustomColor.kgrey900,
                                        fontWeight:
                                            CustomFontWeight.kBoldFontWeight),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 24.w,
                                    ),
                                    child: FacilitiesChip(
                                      chiplist: ratingchip,
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
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      RowOutlineButton(
                                        title: 'Reset',
                                        onPressed: () {},
                                      ),
                                      SizedBox(width: 12.w),
                                      RowElevatedButton(
                                        title: 'Apply',
                                        onPressed: () {},
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        );
                      });
                },
                onChanged: (value) {
                  setState(() {
                    searchrecommendedresidents = recommendedresidents
                        .where((element) => element.name
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                  });
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.w, top: 24.h, bottom: 24.h),
          child: FacilitiesChip(
            chiplist: residentchip,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            children: [
              "${serachController.text.isEmpty ? "0" : searchrecommendedresidents.length} found"
                  .h5(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
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
                  color:
                      isView ? CustomColor.kprimaryblue : CustomColor.kgrey500,
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
                  color:
                      isView ? CustomColor.kgrey500 : CustomColor.kprimaryblue,
                ),
              ),
            ],
          ),
        ),

        /// Not Found Condition
        serachController.text.isNotEmpty && searchrecommendedresidents.isEmpty
            ? NotFoundCondition()
            : isView
                ? Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.all(24.h),
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 34.h,
                        );
                      },
                      itemCount: serachController.text.isNotEmpty
                          ? searchrecommendedresidents.length
                          : recommendedresidents.length,
                      itemBuilder: (BuildContext context, int index) {
                        return RowResidentContainer(
                          resident: serachController.text.isNotEmpty
                              ? searchrecommendedresidents[index]
                              : recommendedresidents[index], onPressed: () {  }, onfavouritepressed: false,
                        );
                      },
                    ),
                  )
                : Expanded(
                    child: GridView.builder(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.w, vertical: 24.h),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 182.w / 274.h,
                            crossAxisSpacing: 16.h,
                            mainAxisSpacing: 16.h),
                        itemCount: serachController.text.isNotEmpty
                            ? searchrecommendedresidents.length
                            : recommendedresidents.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return RecommendedContainer(
                            resident: serachController.text.isNotEmpty
                                ? searchrecommendedresidents[index]
                                : recommendedresidents[index],
                            onPressed: () {}, onFavouritePressed: () {  }, isFavoruited: false,
                          );
                        }),
                  ),
      ]),
    )));
  }
}

class NotFoundCondition extends StatelessWidget {
  const NotFoundCondition({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          SizedBox(
            height: 606.h,
            width: 380.w,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  Image.asset(
                    CustomAssets.notfound,
                    height: 250.h,
                    width: 339.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  "Not Found".h4(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                  SizedBox(
                    height: 12.h,
                  ),
                  "Sorry, the keyword you entered cannot be\nfound, please check again or search with\nanother keyword."
                      .xl(
                          color: CustomColor.kgrey900,
                          fontWeight: CustomFontWeight.kRegularWeight,
                          textAlign: TextAlign.center),
                ]),
          )
        ],
      ),
    );
  }
}

