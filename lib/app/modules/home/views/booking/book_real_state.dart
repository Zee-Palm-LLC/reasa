import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/card_model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/continue_bottom_sheet.dart';
import 'package:reasa/app/modules/home/views/booking/Enter_pin_screen.dart';
import 'package:reasa/app/modules/home/views/booking/add_new_card.dart';
import 'package:reasa/app/modules/home/views/booking/review_summary.dart';

class BookRealState extends StatefulWidget {
  const BookRealState({super.key});

  @override
  State<BookRealState> createState() => _BookRealStateState();
}

class _BookRealStateState extends State<BookRealState> {
  // bool value = false;

  int value = 0;

  @override
  void initState() {
    cards.length;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            bottomSheet: ContinueBottomScheet(onContinue:   () {
                  Get.to(() => ReviewSummary());
                },),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [
                  IconButton(
                    icon: Icon(
                      IconlyLight.scan,
                      color: CustomColor.kgrey900,
                      size: 24.sp,
                    ),
                    onPressed: () {},
                  )
                ],
                title: 'Book Real Estate',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 24.h, left: 24.w, bottom: 24.h),
                    child: "Select the payment method you want to use.".large(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kMediumFontWeight,
                        textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == cards.length - 1) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            child: SizedBox(
                              height: 58.h,
                              width: 380.w,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Get.to(() => AddNewCard());
                                  },
                                  child: "Add New Card".large(
                                      color: CustomColor.kprimaryblue,
                                      fontWeight:
                                          CustomFontWeight.kBoldFontWeight),
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            CustomColor.kprimaryblue
                                                .withOpacity(0.3)),
                                    shape: MaterialStateProperty.all(
                                      
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                kBigRadius))),
                                  )),
                            ),
                          );
                        }
                        var cardfinal = cards[index];
                        return CustomRadioListTile(
                          card: cardfinal,
                          groupvalue: value,
                          onchanged: (int? index) {
                            setState(() {
                              value = index!;
                            });
                          },
                          value: index,
                        );
                      },
                      itemCount: cards.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 32.h);
                      },
                    ),
                  )
                ])));
  }
}



class CustomRadioListTile extends StatelessWidget {
  final CardModel card;
  final int value;
  final int groupvalue;
  final Function(int?) onchanged;
  const CustomRadioListTile({
    Key? key,
    required this.card,
    required this.value,
    required this.groupvalue,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80.h,
        width: 380.w,
        decoration: BoxDecoration(
          boxShadow: boxshadow,
          color: CustomColor.kbackgroundwhite,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: RadioListTile(
            activeColor: CustomColor.kprimaryblue,
            controlAffinity: ListTileControlAffinity.trailing,
            title: Row(
              children: [
                Image.asset(
                  card.image,
                  height: 32.h,
                  width: 32.w,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 16.w,
                ),
                card.cardname.h6(
                    color: CustomColor.kgrey900,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
              ],
            ),
            value: value,
            groupValue: groupvalue,
            onChanged: onchanged,
          ),
        ),
      ),
    );
  }
}
