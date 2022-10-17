
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/commenttextfeild.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/form_testfeild.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/booking/information_detil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BookCalenderScreen extends StatelessWidget {
 BookCalenderScreen({super.key});

    var checkin = TextEditingController();
  var checkout = TextEditingController();
  var comment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Book Real Estate',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  Padding(
                    padding: EdgeInsets.only(left: 24.w,top: 24.h,bottom: 20.h),
                    child: "Select Date".h5(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.r),
                           color: CustomColor.kbackgroundblue,
                        ),
                        height: 309.h,
                        width: 380.w,
                        child:  Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 4.h,left: 12.w, right:12.w),
                            child: SfDateRangePicker(
                             
                              startRangeSelectionColor:CustomColor.kprimaryblue,
                              endRangeSelectionColor: CustomColor.kprimaryblue,
                              rangeSelectionColor: CustomColor.kprimaryblue200,
                              headerStyle :  DateRangePickerHeaderStyle(
                                textStyle: CustomTextStyle.kheading6.copyWith(
          color: CustomColor.kgrey900,
          fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                              ),
                              

                              todayHighlightColor: Colors.transparent,
               view: DateRangePickerView.month,
               selectionMode: DateRangePickerSelectionMode.multiRange,
               ),
                          ),
                        ),
                        
                        
                        ),
                        
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24.h,
                      left: 24.w,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 12.h),
                              child: "Check in".h5(
                                  color: CustomColor.kgrey900,
                                  fontWeight: CustomFontWeight.kBoldFontWeight,
                                  ),
                            ),
                            SizedBox(
                              width: 182.w,
                              child: FormTextFeild(
                                controller: checkin,
                                textInputType: TextInputType.name,
                                hintText: "Check In",
                                showHidePassIcon: false,
                                showCalenderIcon: true,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 12.h),
                              child: "Check Out".h5(
                                  color: CustomColor.kgrey900,
                                  fontWeight: CustomFontWeight.kBoldFontWeight,
                                  ),
                            ),
                            SizedBox(
                              width: 182.w,
                              child: FormTextFeild(
                                controller: checkout,
                                textInputType: TextInputType.name,
                                hintText: "Check Out",
                                showHidePassIcon: false,
                                showCalenderIcon: true,
                              ),
                            ),
                             
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w,top: 24.h,bottom: 16.h),
                    child: "Note to Owner (optional)".h5(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kContRadius),
                         color: CustomColor.kgrey50,
                      ),
                      height: 120.h,
                      width: 380.w,
                      child: CommentTextFeild(
                        controller: comment,
                        textInputType: TextInputType.name,
                        hintText: "Notes",
                      ),
                    ),
                  ),
                          SizedBox(
                          height: 27.h,
                        ),
                            
                            Center(
                    child: SizedBox(
                      height: 58.h,
                      width: 360.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(()=> InformationDetailScreen());
                        },
                        child: "Continue".large(
                            color: CustomColor.kbackgroundwhite,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(kBigRadius)))),
                      ),
                    ),
                  )
                  
                  ]))));
  }
}