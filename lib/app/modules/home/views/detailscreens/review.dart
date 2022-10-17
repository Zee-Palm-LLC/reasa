import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/Model/review_model.dart';

import 'package:reasa/app/data/chip_list.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/resident_chip.dart';
import 'package:reasa/app/modules/home/Widgets/show_menu_pop.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

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
                title: '4.8 (1,275 reviews)',
                leading: GetBackIcon(),
              ),
            ),
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 18.w,
                  top: 24.h,
                  bottom: 24.h,
                ),
                child: FacilitiesChip(
                  chiplist: ratingchip,
                ),
              ),
              Expanded(
                  child: ListView.separated(
                itemCount: reviewlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return ReviewWidget(
                    review: reviewlist[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20.h);
                },
              ))
            ])));
  }
}

class ReviewWidget extends StatefulWidget {
  final ReviewModel review;
   ReviewWidget({
    Key? key,
    required this.review,
  }) : super(key: key);

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  bool isliked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 10.h),
          child: Row(
            children: [
              CircleAvatar(
                radius: 19.r,
                backgroundImage: AssetImage(widget.review.image),
              ),
              SizedBox(
                width: 16.w,
              ),
              widget.review.name.large(
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
                    widget.review.star.toString().medium(
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
                  onPressed: () {
                    ShowMenuPop(context);
                  },
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
          child: widget.review.description.medium(
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
              InkWell(
                onTap: () {
                  setState(() {
                     isliked = !isliked;
                  });
                 
                },
                child: isliked
                    ? Icon(
                        IconlyBold.heart,
                        color: CustomColor.kprimaryblue,
                        size: 24.sp,
                      )
                    : Icon(
                        IconlyLight.heart,
                        color: CustomColor.kprimaryblue,
                        size: 24.sp,
                      ),
              ),
              SizedBox(
                width: 10.5.w,
              ),
              widget.review.likes.toString().small(
                  color: CustomColor.kgrey900,
                  fontWeight: CustomFontWeight.kMediumFontWeight),
              SizedBox(
                width: 24.w,
              ),
              widget.review.time.small(
                color: CustomColor.kgrey700,
                fontWeight: CustomFontWeight.kMediumFontWeight,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
